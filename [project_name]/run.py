import logging
import logging.config

import hydra

from gitinfo import gitinfo
from omegaconf import OmegaConf


logger = logging.getLogger("[project_name].run")


def _set_seeds(seed):
    pass
    # random.seed(seed)
    # np.random.seed(seed)
    # torch.backends.cudnn.benchmark = False
    # torch.backends.cudnn.deterministic = True
    # torch.manual_seed(seed)
    # tf.random.set_seed(seed)


@hydra.main(config_path="configs", config_name="run")
def run(args):
    _set_seeds(args.seed)
    working_directory = Path().cwd()

    # Log general information
    logger.info(f"Using working_directory={working_directory}")
    with contextlib.suppress(TypeError):
        git_info = gitinfo.get_git_info()
        logger.info(f"Commit hash: {git_info['commit']}")
        logger.info(f"Commit date: {git_info['author_date']}")
    logger.info(f"Arguments:\n{OmegaConf.to_yaml(args)}")

    # Do stuff here

    logger.info(f"Run finished")


if __name__ == "__main__":
    run()  # pylint: disable=no-value-for-parameter
