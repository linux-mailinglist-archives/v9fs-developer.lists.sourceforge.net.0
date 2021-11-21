Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6A4586B4
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Nov 2021 23:12:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mov4n-0000hc-1d; Sun, 21 Nov 2021 22:12:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mov4l-0000hW-4S
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Nov 2021 22:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mbbq3vFIAl7yR7LhCVUJnt49ZvRT4nRHvt1yrfOvVuw=; b=LexVqDnsLBSQqQrHKMBb5HjE/D
 t8JfKFO9xHg0IBoQmGwD8ndmAeVLQE1cIdVaNEgZl0qMPkhi2CF9NmI+U+songhsN7y/EONBR/xOp
 KXrXG8gqA1PCXQKXNCB7iBqhAJZHe5gccYLEv+NAqMsFbpRBfqfd7ZIdSB5YtQXU74Vs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mbbq3vFIAl7yR7LhCVUJnt49ZvRT4nRHvt1yrfOvVuw=; b=RP0fH8f2CB4nWbVothuVko0fV5
 fnNvFBXjJOV0iUoAMdcB8ZJLHgtM0o70YEBe4O7Yx+Xvy4GRcelAq0iNIrlbWy3S3DKt4TvAcOgxZ
 EVFhPtff5ptBdQLLGukCjLht5i4lQV5mR7v5PXJoqKlG5dqSVXEWE5q4iHR93dgU87kk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mov4l-0006Vv-3m
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Nov 2021 22:12:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2A919C01D; Sun, 21 Nov 2021 23:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637532756; bh=Mbbq3vFIAl7yR7LhCVUJnt49ZvRT4nRHvt1yrfOvVuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y59cniNi01yboaBY01UCKnQHA8BRDLhn+ynh9LorIrC65FyEa4N2MTFmeq/emdo8q
 1na7PfwJw/+kk7JEPR41Qsi1XhVOuOLCoQEa0NM6UBfo2HM3hzMQ52yCm1vZzDgZQW
 rdcmWHPG4xZ8+6iGRlz9wyESr2dffO098mayFb7MH05bYxtSO/DGttGZsJrlRW5F32
 DlX+6CLjzVbRc4qXD2OavdQ1eHkTLXql4mN5oyBCdEcFFTMzd+iUvY9pTaJ9EMvWrl
 +GZ7XFiD23sKQfBUHK5JKNBOvq1dEaIuTBaY/isGFyJwmGlaE5mP2LcbwXrryBozTi
 xhho/ojBoasEw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 50402C009;
 Sun, 21 Nov 2021 23:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637532755; bh=Mbbq3vFIAl7yR7LhCVUJnt49ZvRT4nRHvt1yrfOvVuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ISNbCRcA04xWfy17NSUUeMIQTQcXaaU9jdDrZJNBcz0Rh8CMe1quzYfL+zEk3s3M7
 oFUxFhF/hi+2hWPfcXFThsv7Du6yQl5yo3EG1cOkKuFqqNT7V0+6R1P5vXQVc6qOTD
 9EP3ORrj1ckAD74E/RHJFohGb4mHKI/zg6EfG24mFraifX51HfE50/o+xwOA0FBEhB
 Id7oN4wctWyhHuI8jHbe0+9OcWS9XxaADyXZFA2p3ZKwGFskhs+iHLyOxO6nNwqm3O
 GV0PlyXixudpYrtihQliaBqxW4NNcPJsyw92V+74RIWOP9C0NUDkBxm3GKW5XAtbG3
 Jfb25Y6kkEeZQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d89f5d3a;
 Sun, 21 Nov 2021 22:12:29 +0000 (UTC)
Date: Mon, 22 Nov 2021 07:12:14 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YZrEPj9WLx36Pm3k@codewreck.org>
References: <YZl+eD6r0iIGzS43@codewreck.org>
 <4244024.q9Xco3kuGk@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4244024.q9Xco3kuGk@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sun, Nov 21,
 2021 at 05:57:30PM
 +0100: > > Although frankly as I said if we're going to do this, we actual
 can > > majorate the actual max for all operations pretty easi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mov4l-0006Vv-3m
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sun, Nov 21, 2021 at 05:57:30PM +0100:
> > Although frankly as I said if we're going to do this, we actual can
> > majorate the actual max for all operations pretty easily thanks to the
> > count parameter -- I guess it's a bit more work but we can put arbitrary
> > values (e.g. 8k for all the small stuff) instead of trying to figure it
> > out more precisely; I'd just like the code path to be able to do it so
> > we only do that rechurn once.
> 
> Looks like we had a similar idea on this. My plan was something like this:
> 
> static int max_msg_size(enum msg_type) {
>     switch (msg_type) {
>         /* large zero copy messages */
>         case Twrite:
>         case Tread:
>         case Treaddir:
>             BUG_ON(true);
> 
>         /* small messages */
>         case Tversion:
>         ....
>             return 8k; /* to be replaced with appropriate max value */
>     }
> }
> 
> That would be a quick start and allow to fine grade in future. It would also 
> provide a safety net, e.g. the compiler would bark if a new message type is 
> added in future.

I assume that'd only be used if the caller does not set an explicit
limit, at which point we're basically using a constant and the function
coud be replaced by a P9_SMALL_MSG_SIZE constant... But yes, I agree
with the idea, it's these three calls that deal with big buffers in
either emission or reception (might as well not allocate a 128MB send
buffer for Tread ;))

If you have a Plan for it I'll let you continue and review as things
come. Thanks a lot for the work!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
