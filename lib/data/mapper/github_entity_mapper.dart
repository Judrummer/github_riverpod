import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/source/remote/response/github_response.dart';

RepoItemEntity mapToRepoItemEntity(RepoResponse repoResponse) {
  return RepoItemEntity(
    id: repoResponse.id.toString(),
    name: repoResponse.name ?? '',
    description: repoResponse.description ?? '',
    stargazersCount: repoResponse.stargazersCount ?? 0,
  );
}

ContributorEntity mapToContributorEntity(ContributorResponse response) {
  return ContributorEntity(
    name: response.login ?? '',
    avatarUrl: response.avatarUrl ?? '',
    contributions: response.contributions ?? 0,
  );
}

RepoEntity mapToRepoEntity(RepoDetailResponse repoDetailResponse, List<ContributorResponse> contributorResponses) {
  return RepoEntity(
    id: repoDetailResponse.id.toString(),
    name: repoDetailResponse.name ?? '',
    description: repoDetailResponse.description ?? '',
    language: repoDetailResponse.language ?? '',
    sshUrl: repoDetailResponse.sshUrl ?? '',
    stargazersCount: repoDetailResponse.stargazersCount ?? 0,
    contributors: contributorResponses.map(mapToContributorEntity).toList(),
  );
}
