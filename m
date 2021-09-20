Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EE4411CF3
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 19:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jbejbwxk7MmWXbIBp/BZKL1pilcpayYC4+GuZZxgwTY=; b=DlAk/6RzHrlyQfB0OPjCyjOxfF
	RvX4idSu7PJ4q6pzc5X1qfi/8ZyFUDXAOXDKxCVvY2eSxImgjazPfgtEwthLcOOgAPXuR0Kj6Jc6e
	jUymimsgdjPhTUFvE2kw3U3BOkFP3tZ32KRKyONoNMioWylnrcCLTailnDzKb6uWyoWU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSMrP-0005YW-FW; Mon, 20 Sep 2021 17:13:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <0a2c16b9acf580a679f38354b5d60a68c5fb6c99@lizzy.crudebyte.com>)
 id 1mSMrL-0005YL-4N
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2acrbVCK2C0tCGf+WWirJP4DaHOyBUdmzXbdsZb3Zuw=; b=kOwd6EI16ELKSviCDulYYShji5
 ihKmyYrk4cJWkPo4HhrVSsc7Pw6aGAbxxkSmzpS185YlQANxq+qrvqde/7wp/aPF2QzFLJD+BrjYT
 qfSiqLyNWkICS2FaqrvFlPpKwhlO9/0A8BEX2nJpjit+YztaJ7CvdeGNZsG6ocJhDkuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2acrbVCK2C0tCGf+WWirJP4DaHOyBUdmzXbdsZb3Zuw=; b=FSelF0LkyJ+uLs0BPIqpm/VJBZ
 3+INeVtRgnyWbZV77US7RI67fpsZZDuNwa8ODZXDQ3m3lAPLUWh3FmNlcozzEGMYlb5Vnf0kvKFtR
 RR7z18Y+aGxzWtXUj9Mvb5E70Yauyc9e5cCPtYO3bBn6Ri8cjSpCrI7SN+PWZzKfhASs=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSMrJ-00H8Ch-75
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=2acrbVCK2C0tCGf+WWirJP4DaHOyBUdmzXbdsZb3Zuw=; b=QJMEu
 Hq9Fc3t7eU0bk/z6GKQpONkoKF5I4F1kb9FpuVTrxzo4mLcATL/qaDaWfDzNpMMaHl47T13SY3bHN
 qT/4VqxDs/gUcgiwdxtV2ZlDiY6SRnWEUk2E2g/J4LdMaPwEU7E0Iru+JkSYd0U3KqYGE4qYR7h8C
 LSDB/g+cBrhpjgJ7cLwbHFCPymPHWwMkJhJmxzQORaQm9TyuoivgbYHxfdJW9+P0RaeEHbrTvz02j
 /N4BgZzJosVKwCfdsEtrxb1+HkXCBptgt7Ldnf1xtfcMTkfkIJ2/c5MZrIyilTrNyqYc5HDN4PGg2
 uOZj9qc+X5Mt29IqEjs3lcFe1yDxA==;
Message-Id: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:43:30 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This series aims to get get rid of the current 500k 'msize'
 limitation in the 9p virtio transport, which is currently a bottleneck for
 performance of 9p mounts. This is a follow-up of the following series and
 discussion:
 https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSMrJ-00H8Ch-75
Subject: [V9fs-developer] [PATCH v2 0/7] net/9p: remove msize limit in
 virtio transport
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This series aims to get get rid of the current 500k 'msize' limitation in
the 9p virtio transport, which is currently a bottleneck for performance
of 9p mounts.

This is a follow-up of the following series and discussion:
https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da7d8b1f476f37

Known limitation: With this series applied I can run

  QEMU host <-> 9P virtio <-> Linux guest

with up to 3 MB msize. If I try to run it with 4 MB it seems to hit some
limitation on QEMU side:

  qemu-system-x86_64: virtio: too many write descriptors in indirect table

I haven't looked into this issue yet.

Testing and feedback appreciated!

v1 -> v2:

  * Fix memory leak [patch 6].

  * Use pr_info() instead of p9_debug(P9_DEBUG_ERROR, ...) for user info
    [patch 1].

  * Show user info message if chained SG lists are not supported on
    architecture [patch 6].

  * Kernel doc fixes [patch 4], [patch 6].

Christian Schoenebeck (7):
  net/9p: show error message if user 'msize' cannot be satisfied
  9p/trans_virtio: separate allocation of scatter gather list
  9p/trans_virtio: turn amount of sg lists into runtime info
  9p/trans_virtio: introduce struct virtqueue_sg
  net/9p: add trans_maxsize to struct p9_client
  9p/trans_virtio: support larger msize values
  9p/trans_virtio: resize sg lists to whatever is possible

 include/net/9p/client.h |   2 +
 net/9p/client.c         |  17 ++-
 net/9p/trans_virtio.c   | 290 ++++++++++++++++++++++++++++++++++------
 3 files changed, 269 insertions(+), 40 deletions(-)

-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
