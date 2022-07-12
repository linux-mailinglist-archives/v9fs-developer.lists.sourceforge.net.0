Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B71EF571EB2
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:16:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHdB-0008LQ-9U; Tue, 12 Jul 2022 15:16:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <5fb0bcc402e032cbc0779f428be5797cddfd291c@lizzy.crudebyte.com>)
 id 1oBHd5-0008Kz-HN
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DR3HV1SiIkmW4IR/q6IEoMYBeifoU6ydrhuDi/6K044=; b=WXPVsokHorhyYdMrojJJPAVDeN
 E4WjwmIijvw1pNtfyous7n3mx+hoUNRceRL03N4mHhimIJcr5/SxTpURvuOHx7ExbYBDjXx5gS+Sn
 9fpxdUoepu3pFlNvO1dSVqHkuurQu09BBZWs9Sl+UBrAsOMAPJS2oGztsA3eWQEjuGMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DR3HV1SiIkmW4IR/q6IEoMYBeifoU6ydrhuDi/6K044=; b=fff1r918b29gSXwJe46nXE2shA
 yYEP0C7NPMrqvZCcj00v1aOxE1ekQVT/Y7R/PEPj/ngZEKg1AKyLk6lHpcTo9Bb0CE7CNDtD+zqJ8
 2TTSK7MWouo5jHYZyhPnVuAxrcdCofaK1Gz8NR2S7anjpa6X524xxbrRSJdb/PGr/ruA=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHd4-00EppB-8o
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=DR3HV1SiIkmW4IR/q6IEoMYBeifoU6ydrhuDi/6K044=; b=JLWBp
 gHkHeaKR9uoySe7mI5RXdMk5eM3CvX4kJVb2YrdP9Twm3QzZ6S+Y6wVFRAp7WWQFdtJ3BuwtWhWN6
 8wRfR0767mXO3VYp73AtO09kpTLimCxsrF/3/ZCxz36rMROSaL+yvUVGgXHon14kaFFxQbsd8TwxP
 UyBbL+8DGTfAto/gBpbuFDXy84qAP2ebfuh3uMDTAewXMmwDdeITuhrWWBnWwP8ozOdyW2x8yNdhM
 wIv7Or4GdQneIDuoeaDlaIdmZQvathN7kMCPiIg+BoyOF+60uWcuIezRHxkAlxOzrjl9/omsM6awR
 M5jCAFZ1uohM1amebgFDe2AlMpaxA==;
Message-Id: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:35:54 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This series aims to get get rid of the current 500k 'msize'
 limitation in the 9p virtio transport, which is currently a bottleneck for
 performance of 9p mounts. To avoid confusion: it does remove the msize limit
 for the virtio transport, on 9p client level though the anticipated milestone
 for this series is now a max. 'msize' of 4 MB. See patch 7 for reason w [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oBHd4-00EppB-8o
Subject: [V9fs-developer] [PATCH v5 00/11] remove msize limit in virtio
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This series aims to get get rid of the current 500k 'msize' limitation in
the 9p virtio transport, which is currently a bottleneck for performance
of 9p mounts.

To avoid confusion: it does remove the msize limit for the virtio transport,
on 9p client level though the anticipated milestone for this series is now
a max. 'msize' of 4 MB. See patch 7 for reason why.

This is a follow-up of the following series and discussion:
https://lore.kernel.org/all/cover.1640870037.git.linux_oss@crudebyte.com/

Latest version of this series:
https://github.com/cschoenebeck/linux/commits/9p-virtio-drop-msize-cap


OVERVIEW OF PATCHES:

* Patches 1..6 remove the msize limitation from the 'virtio' transport
  (i.e. the 9p 'virtio' transport itself actually supports >4MB now, tested
  successfully with an experimental QEMU version and some dirty 9p Linux
  client hacks up to msize=128MB).

* Patch 7 limits msize for all transports to 4 MB for now as >4MB would need
  more work on 9p client level (see commit log of patch 7 for details).

* Patches 8..11 tremendously reduce unnecessarily huge 9p message sizes and
  therefore provide performance gain as well. So far, almost all 9p messages
  simply allocated message buffers exactly msize large, even for messages
  that actually just needed few bytes. So these patches make sense by
  themselves, independent of this overall series, however for this series
  even more, because the larger msize, the more this issue would have hurt
  otherwise.


PREREQUISITES:

If you are testing with QEMU then please either use QEMU 6.2 or higher, or
at least apply the following patch on QEMU side:

  https://lore.kernel.org/qemu-devel/E1mT2Js-0000DW-OH@lizzy.crudebyte.com/

That QEMU patch is required if you are using a user space app that
automatically retrieves an optimum I/O block size by obeying stat's
st_blksize, which 'cat' for instance is doing, e.g.:

	time cat test_rnd.dat > /dev/null

Otherwise please use a user space app for performance testing that allows
you to force a large block size and to avoid that QEMU issue, like 'dd'
for instance, in that case you don't need to patch QEMU.


KNOWN LIMITATION:

With this series applied I can run

  QEMU host <-> 9P virtio <-> Linux guest

with up to slightly below 4 MB msize [4186112 = (1024-2) * 4096]. If I try
to run it with exactly 4 MB (4194304) it currently hits a limitation on
QEMU side:

  qemu-system-x86_64: virtio: too many write descriptors in indirect table

That's because QEMU currently has a hard coded limit of max. 1024 virtio
descriptors per vring slot (i.e. per virtio message), see to do (1.) below.


STILL TO DO:

  1. Negotiating virtio "Queue Indirect Size" (MANDATORY):

    The QEMU issue described above must be addressed by negotiating the
    maximum length of virtio indirect descriptor tables on virtio device
    initialization. This would not only avoid the QEMU error above, but would
    also allow msize of >4MB in future. Before that change can be done on
    Linux and QEMU sides though, it first requires a change to the virtio
    specs. Work on that on the virtio specs is in progress:

    https://github.com/oasis-tcs/virtio-spec/issues/122

    This is not really an issue for testing this series. Just stick to max.
    msize=4186112 as described above and you will be fine. However for the
    final PR this should obviously be addressed in a clean way.

  2. Reduce readdir buffer sizes (optional - maybe later):

    This series already reduced the message buffers for most 9p message
    types. This does not include Treaddir though yet, which is still simply
    using msize. It would make sense to benchmark first whether this is
    actually an issue that hurts. If it does, then one might use already
    existing vfs knowledge to estimate the Treaddir size, or starting with
    some reasonable hard coded small Treaddir size first and then increasing
    it just on the 2nd Treaddir request if there are more directory entries
    to fetch.

  3. Add more buffer caches (optional - maybe later):

    p9_fcall_init() uses kmem_cache_alloc() instead of kmalloc() for very
    large buffers to reduce latency waiting for memory allocation to
    complete. Currently it does that only if the requested buffer size is
    exactly msize large. As patch 10 already divided the 9p message types
    into few message size categories, maybe it would make sense to use e.g.
    4 separate caches for those memory category (e.g. 4k, 8k, msize/2,
    msize). Might be worth a benchmark test.

Testing and feedback appreciated!

v4 -> v5:

  * Exclude RDMA transport from buffer size reduction. [patch 11]

Christian Schoenebeck (11):
  9p/trans_virtio: separate allocation of scatter gather list
  9p/trans_virtio: turn amount of sg lists into runtime info
  9p/trans_virtio: introduce struct virtqueue_sg
  net/9p: add trans_maxsize to struct p9_client
  9p/trans_virtio: support larger msize values
  9p/trans_virtio: resize sg lists to whatever is possible
  net/9p: limit 'msize' to KMALLOC_MAX_SIZE for all transports
  net/9p: split message size argument into 't_size' and 'r_size' pair
  9p: add P9_ERRMAX for 9p2000 and 9p2000.u
  net/9p: add p9_msg_buf_size()
  net/9p: allocate appropriate reduced message buffers

 include/net/9p/9p.h     |   3 +
 include/net/9p/client.h |   2 +
 net/9p/client.c         |  68 +++++++--
 net/9p/protocol.c       | 154 ++++++++++++++++++++
 net/9p/protocol.h       |   2 +
 net/9p/trans_virtio.c   | 304 +++++++++++++++++++++++++++++++++++-----
 6 files changed, 484 insertions(+), 49 deletions(-)

-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
