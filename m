Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FD33240E8
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Feb 2021 16:44:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEwL8-0007FW-Fo; Wed, 24 Feb 2021 15:44:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lEwL6-0007Ee-8h
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 15:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZV8jkMbY8El7E5ZFbA9docIbSkA9tEpu7hmt+4Awjko=; b=eWOfYVZb+q1C/jnrftwom3zw+Y
 YtXQ0PpMfawOBPdDjdpQVSTtUEoGc7dQa2x5mGTrAGSboSNP2yge+eVQ9ncpgSpKjF6CBFuY5Yd7C
 6TifQa4iVwvqUiAyVSQASS2XCqRlIaQbvGjx0fXNtnpvm09/drH/2gXVMPvFn6Uu2h+g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZV8jkMbY8El7E5ZFbA9docIbSkA9tEpu7hmt+4Awjko=; b=hRzcxlCVQKrlxxP+GUFmARQoPb
 QnzlAV9XfHOLVnm6V4omOuZDYCM3UnMVsIDh5XRxdFT/oqKsUTQbiMai7DiqTtokZ+tru+AkZpURf
 sKUBwVJpIp5b5Y7qlnYMFqLh0l87GFl4ZrGCxdm5hN3WMP24QhEtdRslsfTqOf9hiczc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lEwKs-0006x1-5R
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Feb 2021 15:44:36 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9F27BC01D; Wed, 24 Feb 2021 16:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614181454; bh=ZV8jkMbY8El7E5ZFbA9docIbSkA9tEpu7hmt+4Awjko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VsE5jdr/5aZpQH+iy7jVXAIurhi3NlE749qCFkpkQQXTKLZ7EcdbMytdAVWvGLbO4
 yrQl2sg3Ro42bSA3PZ21pohotim5n/cZtc3ZFmh09AqaoDUTXHVcRFeVW6yGo2By7D
 dcRGux1GlLIY/yihtuj76PwQ1QCHm7YwA5wkVwI4Mw8OsuLfI2J2PX/dRALFf2NZ7b
 LwBfghtJh8qE6qYp8dlWFJYbyYBSmGt09FUpPGOrt8vqt2ravJT4MUWgNLOBh+zQUr
 +JXEiAqK+//aafD2H/UazGLSU64xrLP7QUUo5fTTfZh+4yenAAjlYn+cOIf3pGANRC
 gyXblOwR/IiYg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTP id 99CC2C009;
 Wed, 24 Feb 2021 16:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614181453; bh=ZV8jkMbY8El7E5ZFbA9docIbSkA9tEpu7hmt+4Awjko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cg4V6oqyH5eIpG+vlgHKbC/pIbonfhxTTuPNEM6WTJnR05IOLD9CkddT/7KkI5nDu
 f+oBz98aOjF7gyK2dZ942PyqTnmoTfh+l90ies6b/vyeHlujKtk4Y7svX2SlRSLGRd
 4IaQuFgM++MFYG/UMgGN5/wZ2xPwuzzOa2t1UMIrosD/6qDRgj54Z9svWmf2AtXOHJ
 CpOlGz9izTLCorDbl+RwbVIPlLtnzpc2vRe0IiKyjFghHep3Eg9Wzb3d7+IBGOFqkM
 vh2I58M9ZaHrZK++A8EtEZUzmCudlJxJP+t7J0A7Qo9pwTzEoEwlo06iKsFvNIZK+D
 MQqJZQwLAoMVg==
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by tyr.codewreck.org (Postfix) with SMTP id 8618A281001;
 Thu, 25 Feb 2021 00:44:12 +0900 (JST)
Received: (from asmadeus@codewreck.org)
 by tyr.codewreck.org (mini_sendmail/1.3.9 19Oct2015);
 Thu, 25 Feb 2021 00:44:12 JST (sender asmadeus@tyr.codewreck.org)
Date: Thu, 25 Feb 2021 00:43:57 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20210224154357.GA12207@tyr>
References: <20200918213436.GA3520@redhat.com> <6115734.fQeFoySBn5@silver>
 <20210223090531-mutt-send-email-mst@kernel.org>
 <2006960.IAZaadA1hq@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2006960.IAZaadA1hq@silver>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lEwKs-0006x1-5R
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
Cc: "cdupontd@redhat.com" <cdupontd@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, Greg Kurz <groug@kaod.org>,
 qemu-devel@nongnu.org, virtio-fs-list <virtio-fs@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 v9fs-developer@lists.sourceforge.net, "Shinde,
 Archana M" <archana.m.shinde@intel.com>,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Feb 24, 2021 at 04:16:52PM +0100:
> Misapprehension + typo(s) in my previous message, sorry Michael. That's 500k 
> of course (not 5k), yes.
> 
> Let me rephrase that question: are you aware of something in virtio that would 
> per se mandate an absolute hard coded message size limit (e.g. from virtio 
> specs perspective or maybe some compatibility issue)?
> 
> If not, we would try getting rid of that hard coded limit of the 9p client on 
> kernel side in the first place, because the kernel's 9p client already has a 
> dynamic runtime option 'msize' and that hard coded enforced limit (500k) is a 
> performance bottleneck like I said.

We could probably set it at init time through virtio_max_dma_size(vdev)
like virtio_blk does (I just tried and get 2^64 so we can probably
expect virtually no limit there)

I'm not too familiar with virtio, feel free to try and if it works send
me a patch -- the size drop from 512 to 500k is old enough that things
probably have changed in the background since then.


On the 9p side itself, unrelated to virtio, we don't want to make it
*too* big as the client code doesn't use any scatter-gather and will
want to allocate upfront contiguous buffers of the size that got
negotiated -- that can get ugly quite fast, but we can leave it up to
users to decide.
One of my very-long-term goal would be to tend to that, if someone has
cycles to work on it I'd gladly review any patch in that area.
A possible implementation path would be to have transport define
themselves if they support it or not and handle it accordingly until all
transports migrated, so one wouldn't need to care about e.g. rdma or xen
if you don't have hardware to test in the short term.

The next best thing would be David's netfs helpers and sending
concurrent requests if you use cache, but that's not merged yet either
so it'll be a few cycles as well.


Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
