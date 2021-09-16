Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F5C40EA8B
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Sep 2021 21:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BPKsogggxH/l0KRZJgolJjCApud1GyNrVV3J9lKoMJQ=; b=ZPbBv02YBTZhei+o+x+1JQUVSv
	sk4skUmVLpAgN881gYb/0sufDGL332xH7Ovb2AzOFYCiCOpRDyPfHQAk2FFVAwHv3x51wUYn6ON+T
	V4NKw5RwNXN6coCmuhRwLCUZWBk5nU1tgznUP4D/ttdQtSF++NHRLjtoZO/8FPbcJwWM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQwen-0002Eh-Mf; Thu, 16 Sep 2021 19:02:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <a98a002b61d399078ef5ff3c3d66de67adc8854f@lizzy.crudebyte.com>)
 id 1mQwej-0002EK-PP
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ik1mOPhHb219qFHw9mwE2yMv9/LvK/U8Z7AlP83Kzrw=; b=kT5dfz2xx2XMuYT03F7iYLfsMr
 /oidaHyFCLaRGGVkpDENYrQgvFB96PP6k3iNlmgbww+VqsGv74pQ3/l7g1/qRedJJe9Eit+VI2Fe/
 D0GPTZCnNXhCqYT9Sum0aJ1h/SiRWhcxBPRp4eqoERNSoik07q8LJL8aVeNeBJZNRsT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ik1mOPhHb219qFHw9mwE2yMv9/LvK/U8Z7AlP83Kzrw=; b=Xr93wSSPvx6cG01bjtwInfsn2Y
 j7bL5yXhiPVCKHqgqOMp1SjnHzj87zEwaIzCQylGoblBDGRnpojX0dPJgy4ewkoIF1DDKOgwC1Sh5
 R4jyGFO4LQR0C0E0QoJ5ovtmpGhfEJImSh+4hOZzd2Xn/IzNEERm+yf3qdM0a2ERJc9M=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQweh-00D4oZ-7b
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=ik1mOPhHb219qFHw9mwE2yMv9/LvK/U8Z7AlP83Kzrw=; b=XE9A1
 A4xteQqWYuuXCJk8nAkFULgkG112yddY0a5bRZkv40AmTAPMYaNqxzhwNSHNAfbxgUmKDaLM/kGy9
 1aimAtHANoA1LFy2qaNvafx5DJ4sVfCLJL02Xhsec5WiYemFJEesZhDNJKtPAfw1QRXWajsSIzuGx
 o2MIUjONTxjd2tG4R4SHtFVl66P75AujcWtJiD+tussAu8kKjH1AeQq2lctUaKmCqBk/TE2ih8Hej
 CpKDErQ8sMS5/JpbHR5gLPsub4/skqX9deWcxUOsRyYeX6xupBl0oGJSJRBrIsV36iFRzO04+Irtf
 C5lOrNuUrRPZaIdAxEHpEb0CBwyww==;
Message-Id: <cover.1631816768.git.linux_oss@crudebyte.com>
Date: Thu, 16 Sep 2021 20:26:08 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is an initial draft for getting rid of the current 500k
 'msize' limitation in the 9p virtio transport, which is currently a bottleneck
 for performance of Linux 9p mounts. This is a follow-up of the following
 series and discussion:
 https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mQweh-00D4oZ-7b
Subject: [V9fs-developer] [PATCH 0/7] net/9p: remove msize limit in virtio
 transport
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

This is an initial draft for getting rid of the current 500k 'msize'
limitation in the 9p virtio transport, which is currently a bottleneck for
performance of Linux 9p mounts.

This is a follow-up of the following series and discussion:
https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da7d8b1f476f37

Known limitation: With this series applied I can run

  QEMU host <-> 9P virtio <-> Linux guest

with up to 3 MB msize. If I try to run it with 4 MB it seems to hit some
limitation on QEMU side:

  qemu-system-x86_64: virtio: too many write descriptors in indirect table

I haven't looked into this issue yet.

Testing and feedback appreciated!

Christian Schoenebeck (7):
  net/9p: show error message if user 'msize' cannot be satisfied
  9p/trans_virtio: separate allocation of scatter gather list
  9p/trans_virtio: turn amount of sg lists into runtime info
  9p/trans_virtio: introduce struct virtqueue_sg
  net/9p: add trans_maxsize to struct p9_client
  9p/trans_virtio: support larger msize values
  9p/trans_virtio: resize sg lists to whatever is possible

 include/net/9p/client.h |   2 +
 net/9p/client.c         |  18 ++-
 net/9p/trans_virtio.c   | 281 ++++++++++++++++++++++++++++++++++------
 3 files changed, 261 insertions(+), 40 deletions(-)

-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
