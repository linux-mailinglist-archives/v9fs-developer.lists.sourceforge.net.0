Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCD45769CA
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCThZ-0007qx-Fl; Fri, 15 Jul 2022 22:22:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <3f51590535dc96ed0a165b8218c57639cfa5c36c@lizzy.crudebyte.com>)
 id 1oCThR-0007ql-Ox
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IDzshP1UOwc2YJpmDhWVDpcIwCbw0ukLD6sNDBszCfk=; b=kVyVRqXvd2Mqh8V5kCNi4ir2dB
 7y173IPrIONxr1w41h+08UIBgdsQ5KGFbjZTqaTica/8GLT879ARjWGoLAmt9AuYGWRIH/ewFTz5D
 DUq2hNXMPknJVUXoZj5WyRM+Dxe7RvHzqNLdphuV/wN6yxLFGJrQi54WIxU3uqpgqMJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IDzshP1UOwc2YJpmDhWVDpcIwCbw0ukLD6sNDBszCfk=; b=dWwSeXmJJrPHjHmAV9AYzws22w
 pwRXfhZhV2RgYy92WpTpogZOU3+Yn5MiRpne1MsTeKWM6toaSaXcmYch+8MrFIRmu4mBpPpCKQLYW
 BT85z0a73MRhPtYRb3+IfqibXsXkzhI9+Q6lN3jvb0JyA1g7I/ti/QnSoORKz1tI+8SE=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCThO-0000kW-AM
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=IDzshP1UOwc2YJpmDhWVDpcIwCbw0ukLD6sNDBszCfk=; b=BIWxZ
 TXW1JGwyTKdX4oameCV8U8OlmIGdh+F6r2c6ZD7w91G2SYIYDWThA8deouz95HJU8wqPGP7D0hBIV
 lfd4QREdIPBwWniSdYMkDfNaybd6heSfPoDS5sve6LTEEbPxV/2S+w1CMcc+xh0gamY5PV/K4CMq8
 bDu7RiEMud2YTRtmf/ch4WZ42f4ddrFcYw7f4+Jh8BUYtN8ByOjHt/M3BQxqpN7a7t1vDt5dgkPSl
 6w7hfuLKAGd7J6q9b0+MDyt8aPQVO5h0enUwOokaSwECvJwZAJh3Iobkj4LjXe4GzOwujtqiPo0xQ
 TD9+nBCexMa3v6ZnEG9sodQ3Fv2Ww==;
Message-Id: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:35:26 +0200
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
 for this series is now a max. 'msize' of 4 MB. See patch 5 for reason w [...]
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
X-Headers-End: 1oCThO-0000kW-AM
Subject: [V9fs-developer] [PATCH v6 00/11] remove msize limit in virtio
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
a max. 'msize' of 4 MB. See patch 5 for reason why.

This is a follow-up of the following series and discussion:
https://lore.kernel.org/all/cover.1657636554.git.linux_oss@crudebyte.com/

Latest version of this series:
https://github.com/cschoenebeck/linux/commits/9p-virtio-drop-msize-cap


OVERVIEW OF PATCHES:

* Patches 1..6 remove the msize limitation from the 'virtio' transport
  (i.e. the 9p 'virtio' transport itself actually supports >4MB now, tested
  successfully with an experimental QEMU version and some dirty 9p Linux
  client hacks up to msize=128MB).

* Patches 7..11 tremendously reduce unnecessarily huge 9p message sizes and
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


STILL TO DO:

  1. Negotiating virtio "Queue Indirect Size" (recommended):

    This series assumes a maximum amount of 1024 virtio indirect desriptors
    to be supported by 9p server, which is true for QEMU, but probably not
    for other 9p servers and therefore be addressed by negotiating the
    maximum length of virtio indirect descriptor tables on virtio device
    initialization instead. This would not only avoid issues with other 9p
    servers, but would also allow msize of >4MB in future. Before that
    change can be done on Linux and QEMU sides though, it first requires a
    change to the virtio spec. Work on that on the virtio spec. is still in
    progress:

    https://github.com/oasis-tcs/virtio-spec/issues/122

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

v5 -> v6:

  * Fix BUG_ON(node >= VIRTQUEUE_SG_NSGL_MAX) ->
        BUG_ON(node >= vq_sg->nsgl) in vq_sg_page().
    [patch 3]

  * Limit virtio transport to (slightly below) 4MB msize by assuming
    VIRTIO_MAX_DESCRIPTORS = 1024. [patch 5]

  * Drop previous patch "net/9p: limit 'msize' to KMALLOC_MAX_SIZE for all".
    [OLD patch 7]

  * Add static_assert(NAME_MAX <= 4k) to p9_msg_buf_size().
    [patch 9]

  * Make it more clear from the commit log how individual 9p message types
    were distributed over the 2 hard coded message size categories.
    [patch 9]

  * Drop max() call in p9_msg_buf_size() which was superfluous.
    [patch 9]

  * Compare protocol version directly against 'p9_proto_legacy' instead of
    inverted comparison against 'p9_proto_2000u' and 'p9_proto_2000l'.
    [patch 9]

  * Fix code style aesthetics by getting rid of an unnecessary block
    indention. [patch 9]

  * Dynamically calculate size for P9_TSYMLINK instead of using a hard
    coded size. [patch 9]

  * Fix s/P9_TSTAT/P9_TWSTAT/.
    [patch 9]

  * Add missing P9_TMKNOD, P9_TRENAME, P9_TLOCK to hard coded 8k size
    category. [patch 9]

  * Use a dedicated new bool field 'pooled_rbuffers' in struct
    p9_trans_module instead of strcmp(c->trans_mod->name, "rdma").
    [NEW patch 10], [patch 11]

  * Allow dynamic request buffer size for RDMA transport as well.
    [patch 11]

Christian Schoenebeck (11):
  9p/trans_virtio: separate allocation of scatter gather list
  9p/trans_virtio: turn amount of sg lists into runtime info
  9p/trans_virtio: introduce struct virtqueue_sg
  net/9p: add trans_maxsize to struct p9_client
  9p/trans_virtio: support larger msize values
  9p/trans_virtio: resize sg lists to whatever is possible
  net/9p: split message size argument into 't_size' and 'r_size' pair
  9p: add P9_ERRMAX for 9p2000 and 9p2000.u
  net/9p: add p9_msg_buf_size()
  net/9p: add 'pooled_rbuffers' flag to struct p9_trans_module
  net/9p: allocate appropriate reduced message buffers

 include/net/9p/9p.h        |   3 +
 include/net/9p/client.h    |   2 +
 include/net/9p/transport.h |   5 +
 net/9p/client.c            |  60 +++++--
 net/9p/protocol.c          | 167 +++++++++++++++++++
 net/9p/protocol.h          |   2 +
 net/9p/trans_fd.c          |   1 +
 net/9p/trans_rdma.c        |   1 +
 net/9p/trans_virtio.c      | 321 ++++++++++++++++++++++++++++++++-----
 net/9p/trans_xen.c         |   1 +
 10 files changed, 514 insertions(+), 49 deletions(-)

-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
