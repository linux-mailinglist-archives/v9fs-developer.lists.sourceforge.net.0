Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D25F8326AB9
	for <lists+v9fs-developer@lfdr.de>; Sat, 27 Feb 2021 01:22:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lFnNX-00018r-UM; Sat, 27 Feb 2021 00:22:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@gaia.codewreck.org>) id 1lFnNW-00018e-EG
 for v9fs-developer@lists.sourceforge.net; Sat, 27 Feb 2021 00:22:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZ+rgJ3UihBISUAot2sePawG8XzFfR7OqVRAAigwTBI=; b=O4XNOegTOcSa0aqW8b9p2Xo5f9
 VR/LCcvZfup/I93QbaLIqmaUwUNqTucMhS3J71XHbKsOIYlJPs7X5HRea9HRcCcgdew/TS1Z3du+2
 phkkbtYie0VTludOOuD25+QJv/eFjZjH2Ff+Z0DqKXHZ0KNKfaJkBiQa07aMs3MqQEqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gZ+rgJ3UihBISUAot2sePawG8XzFfR7OqVRAAigwTBI=; b=FSHVEgUX1MpkJvVponGRz3DANg
 P6guqCWiNZdzuLJYo7sAuZNX11CJeP6qDLfr4T9/lG/1PgO760WEbIG4W1MFi/Vgi3h07wSoJt3ED
 S0BodVqxIC+lU7zj3fWujIVcAGQOa4SyNO9YeDQQCWlA6VP/d4N5rj2No7/EkUzd4d48=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lFnNQ-0005o0-R4
 for v9fs-developer@lists.sourceforge.net; Sat, 27 Feb 2021 00:22:38 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C1CFAC01D; Sat, 27 Feb 2021 01:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614384242; bh=gZ+rgJ3UihBISUAot2sePawG8XzFfR7OqVRAAigwTBI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bihkVzetvx+UGlhsFTGUtXtHWuMr4eUlD3WWK2Cw+sVrItCusn/kzLMWGkrU0/FF3
 V855iX2GLDXNno9lCViDVgr+gh1T7rHQZFM+NY6QoQfwG6RXv8CNV4kZRNXm47PkNJ
 oJxFHC5AQIH7yAsoBKl7U3WQceu9Qadc5JunjGmUVaemEVWVbyMJbvYOCn6DMBfxzv
 UEuBQehIyUFLWctXfogLWrrq2C1r5+HvP/a+zMhFb80tmD+bZDgF+NDXN2YdrYscxB
 jsftSe2D4n3BaeGd8HPJ8XXX94RkuqcY97N4haUwcZIJweLbabkVwzpPs3w6TPLlaB
 Xe3BTdZfN7sLQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 76862C009;
 Sat, 27 Feb 2021 01:03:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614384241; bh=gZ+rgJ3UihBISUAot2sePawG8XzFfR7OqVRAAigwTBI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R1hQmsD7cXOP2C2E5tRZPGfZOlY48ge6tacMMKMEc4gIXSJf4UjdEOfLBN8JaW3uB
 SW8hA6Kgt4L2vipe00siK7iDxCQjkHuwvdeAT+nGoLjvkgEswOTaHB7GZmJZIoVcYN
 pVKlP0jQf3ZqwHNLRGr1Bg3/zChZshbdoGn0/0/NJ8+UKrPNeUqNhUkcv9ql5XwacA
 1MmUTW56GrYcFmoISDpevSuFn+qQwNNvDEHVI7iCLkSCgNK2G+Ba/Z7S7Qk3Fkxfrk
 xKzB/rDzrKRFo9frzH21Yg3N7TqR6YioTPRB0QGWzXJxu6j+861V5oYFqe0H7ze9Xy
 ythfv4is9dpMg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id aa018e7b;
 Sat, 27 Feb 2021 00:03:55 +0000 (UTC)
Date: Sat, 27 Feb 2021 09:03:40 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <YDmMXCxxOqo1xKgq@odin>
References: <20200918213436.GA3520@redhat.com> <2006960.IAZaadA1hq@silver>
 <20210224154357.GA12207@tyr> <1918692.k70u9Ml6kK@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1918692.k70u9Ml6kK@silver>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lFnNQ-0005o0-R4
Subject: Re: [V9fs-developer] Can not set high msize with virtio-9p (Was:
 Re: virtiofs vs 9p performance)
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
Cc: "Shinde, Archana M" <archana.m.shinde@intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, Greg Kurz <groug@kaod.org>,
 qemu-devel@nongnu.org, virtio-fs-list <virtio-fs@redhat.com>,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 Stefan Hajnoczi <stefanha@redhat.com>, v9fs-developer@lists.sourceforge.net,
 "cdupontd@redhat.com" <cdupontd@redhat.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Fri, Feb 26, 2021 at 02:49:12PM +0100:
> Right now the client uses a hard coded amount of 128 elements. So what about
> replacing VIRTQUEUE_NUM by a variable which is initialized with a value
> according to the user's requested 'msize' option at init time?
> 
> According to the virtio specs the max. amount of elements in a virtqueue is
> 32768. So 32768 * 4k = 128M as new upper limit would already be a significant
> improvement and would not require too many changes to the client code, right?

The current code inits the chan->sg at probe time (when driver is
loader) and not mount time, and it is currently embedded in the chan
struct, so that would need allocating at mount time (p9_client_create ;
either resizing if required or not sharing) but it doesn't sound too
intrusive yes.

I don't see more adherenences to VIRTQUEUE_NUM that would hurt trying.

> > On the 9p side itself, unrelated to virtio, we don't want to make it
> > *too* big as the client code doesn't use any scatter-gather and will
> > want to allocate upfront contiguous buffers of the size that got
> > negotiated -- that can get ugly quite fast, but we can leave it up to
> > users to decide.
> 
> With ugly you just mean that it's occupying this memory for good as long as
> the driver is loaded, or is there some runtime performance penalty as well to
> be aware of?

The main problem is memory fragmentation, see /proc/buddyinfo on various
systems.
After a fresh boot memory is quite clean and there is no problem
allocating 2MB contiguous buffers, but after a while depending on the
workload it can be hard to even allocate large buffers.
I've had that problem at work in the past with a RDMA driver that wanted
to allocate 256KB and could get that to fail quite reliably with our
workload, so it really depends on what the client does.

In the 9p case, the memory used to be allocated for good and per client
(= mountpoint), so if you had 15 9p mounts that could do e.g. 32
requests in parallel with 1MB buffers you could lock 500MB of idling
ram. I changed that to a dedicated slab a while ago, so that should no
longer be so much of a problem -- the slab will keep the buffers around
as well if used frequently so the performance hit wasn't bad even for
larger msizes


> > One of my very-long-term goal would be to tend to that, if someone has
> > cycles to work on it I'd gladly review any patch in that area.
> > A possible implementation path would be to have transport define
> > themselves if they support it or not and handle it accordingly until all
> > transports migrated, so one wouldn't need to care about e.g. rdma or xen
> > if you don't have hardware to test in the short term.
> 
> Sounds like something that Greg suggested before for a slightly different,
> even though related issue: right now the default 'msize' on Linux client side
> is 8k, which really hurts performance wise as virtually all 9p messages have
> to be split into a huge number of request and response messages. OTOH you
> don't want to set this default value too high. So Greg noted that virtio could
> suggest a default msize, i.e. a value that would suit host's storage hardware
> appropriately.

We can definitely increase the default, for all transports in my
opinion.
As a first step, 64 or 128k?

> > The next best thing would be David's netfs helpers and sending
> > concurrent requests if you use cache, but that's not merged yet either
> > so it'll be a few cycles as well.
> 
> So right now the Linux client is always just handling one request at a time;
> it sends a 9p request and waits for its response before processing the next
> request?

Requests are handled concurrently just fine - if you have multiple
processes all doing their things it will all go out in parallel.

The bottleneck people generally complain about (and where things hurt)
is if you have a single process reading then there is currently no
readahead as far as I know, so reads are really sent one at a time,
waiting for reply and sending next.

> If so, is there a reason to limit the planned concurrent request handling
> feature to one of the cached modes? I mean ordering of requests is already
> handled on 9p server side, so client could just pass all messages in a
> lite-weight way and assume server takes care of it.

cache=none is difficult, we could pipeline requests up to the buffer
size the client requested, but that's it.
Still something worth doing if the msize is tiny and the client requests
4+MB in my opinion, but nothing anything in the vfs can help us with.

cache=mmap is basically cache=none with a hack to say "ok, for mmap
there's no choice so do use some" -- afaik mmap has its own readahead
mechanism, so this should actually prefetch things, but I don't know
about the parallelism of that mechanism and would say it's linear.

Other chaching models (loose / fscache) actually share most of the code
so whatever is done for one would be for both, the discussion is still
underway with David/Willy and others mostly about ceph/cifs but would
benefit everyone and I'm following closely.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
