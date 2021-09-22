Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEFF414E4E
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 18:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9bnIbkwVoxJZp2j7LLpnTY7SXEj24iUzmlri9aXCjQw=; b=MY5e2xIQWxK2pUddeZ6mcNs1bt
	8KL18mECyD0Q7MoDfCz+VClfk9KAvGsm5pSxJpdUxaisdGRGWcr13C7rXpFre7XKg6NdiLemt4UrQ
	YjVCORB5ryMfYBlOCvah9ltaih9iAFot6QLk2FgyxRGz6AzVZ3RG5EN4qp8p3lZFFD2I=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT5Nl-0003Vz-1C; Wed, 22 Sep 2021 16:46:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3a0d9c26581f237976c5903e332d49c9727b3fa7@lizzy.crudebyte.com>)
 id 1mT5Ni-0003Vc-UX
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KsQy5PV1HODqilgg4GtOYXMO7E+CDdwOniV9Pc06enU=; b=bk2c5skmG5eiLQTL5aY62DCdwJ
 4/iBnTW1M3lrDVc8c44VziDARURq7G4KCl69RCSitN+CUiM1snqwPeF/Wk6Dx9K8psmOAJvhLbDzo
 Utw761HK8G0chsFCSN8RruXkc8fJ0PyxW+NtPihGlMiMfISIFA8s23zb2H3G9mfIbuIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KsQy5PV1HODqilgg4GtOYXMO7E+CDdwOniV9Pc06enU=; b=fj45oKc5/lTrQ+r00e3dRShJQi
 OjVfJhz/gd+x6RlC9AlNmm0UBKnkLo4BrvVvU/RQPVVNra1jnp1iobhpBLYY7Go1OKGRbH1P9EJhx
 kpWlfrmlSbpCPfMcUiJj7qFCn0uR3pL12FtWvEbw1HI+w6gGFXs28L+307GHDrlmEB1U=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT5Ne-001q1T-24
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=KsQy5PV1HODqilgg4GtOYXMO7E+CDdwOniV9Pc06enU=; b=ENVlb
 1U982qckCwfdjU/zvXZPYSk6DRr411b3w3KvhwoN8p60uozhEZ0apKQTaxK06XIUrZHwsGbPOl48q
 9DXI95eu4ILZepz8GsgXOCdJo9MKX7vWy9sxcyHKREAsELOYKzH10jLAbllraoEDVHWcADVYXLmLA
 7UzRdQpr7TJBPjW7/W+accUmn8FiiFfJDNcrIWRFLni5W5JiZ7H1/w0qESyLnjRt+dgwLomNzg+mB
 PQ6zRjZWk2XJNJG4s5hW5XdLOU4aSkV8h/sSjr7zJr1AjTqqqDfebd2tkjzmzR+pAui4JZODkn26N
 Y80CHNWAL3KUqmZu92gBdKCL9KzvA==;
Message-Id: <cover.1632327421.git.linux_oss@crudebyte.com>
Date: Wed, 22 Sep 2021 18:00:18 +0200
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mT5Ne-001q1T-24
Subject: [V9fs-developer] [PATCH v3 0/7] net/9p: remove msize limit in
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

Prerequisites: If you are testing with QEMU then please apply the following
patch on QEMU side:
https://lore.kernel.org/qemu-devel/E1mT2Js-0000DW-OH@lizzy.crudebyte.com/
That QEMU patch is required if you are using a user space app that
automatically retrieves an optimum I/O block size by obeying stat's
st_blksize, which 'cat' for instance is doing, e.g.:

	time cat test_rnd.dat > /dev/null

Otherwise please use a user space app for performance testing that allows
you to force a large block size and to avoid that QEMU issue, like 'dd'
for instance, in that case you don't need to patch QEMU.

Testing and feedback appreciated!

v2 -> v3:

  * Make vq_sg_free() safe for NULL argument [patch 4].

  * Show info message to user if user's msize option had to be limited in
    case it would exceed p9_max_pages [patch 6].

  * Fix memory leak in vq_sg_resize() [patch 7].

  * Show info message to user if user's msize option had to be limited in
    case not all required SG lists could be allocated [patch 7].

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
 net/9p/trans_virtio.c   | 304 +++++++++++++++++++++++++++++++++++-----
 3 files changed, 283 insertions(+), 40 deletions(-)

-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
