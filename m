Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F2656CB73
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 22:51:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAHPp-0006ym-H6; Sat, 09 Jul 2022 20:51:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oAHPn-0006yX-Jf
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 20:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IZYKQZ0SgUrjhwiiWYrMW2KFbfL/cbLmW34yba21SVg=; b=W5atr/YLIRUb0rjaUNWmDBWBAb
 86TFH0swVOVEywwkTl5mji1XmSukDgy+Zc1jA4gcvvDyQhH0ura7Dr5gV/5a60bmeaEqLiFLa7xrm
 z72h2DZhl7TjaFZWrqUrXVs3EVSy3B9sm12Fg5JnRLWoG6R7arEf4whq09KuWO4ZEFdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IZYKQZ0SgUrjhwiiWYrMW2KFbfL/cbLmW34yba21SVg=; b=CtvtgV00lkozrjSzbxzCjrojff
 73BCpek/CbBi1gAYIBeUVNOKMYCGtxMwtpSpIKsfM4W2UwbgztQ/oBFDl8WeNMH3PnF16qYR10hoY
 DSDKxThKwSYS6NiKMbcSoMPP3MFXwPkp3ulqqtryi/cIp0kx1aRspoX+E+Viah5TLgM0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAHPl-0004HK-Lz
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 20:51:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3C8F4C01C; Sat,  9 Jul 2022 22:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657399851; bh=IZYKQZ0SgUrjhwiiWYrMW2KFbfL/cbLmW34yba21SVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jeWMN8gsxQTP3CL1U/HqqEfGrLDpSq/nGdG5QqcAEIyiyY2MIirtosmlSp/s0LnZH
 STcxa01waMyR5GpGnytW+UofZGjyuvUFb5ahtFFfUv12xiKCYF1jKhwJcRhyOdmXSU
 BCn5hL5XlPyQrIxyJHDWWhvcPtCahQUZ41iWLjDBsP2qRpzvUX+Ji5yI7VahcnsrBO
 Cwgrwqj0pZXt4e4cA3X6Qt7VuS+Z9EF7tznwzgbpr4oC2XGXeVvV1H8s0J+pwt161I
 L7PcE8yNFkQjQjMgNG/Pmv2mImRtPrLGV4m2jD3bsQfHsJKZ0tXXUEwaYw5i3XQD1S
 tJtZT35CWrmGg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C5D4AC009;
 Sat,  9 Jul 2022 22:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657399850; bh=IZYKQZ0SgUrjhwiiWYrMW2KFbfL/cbLmW34yba21SVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vyYDFbfPd4pYJVDwVN2bH+shV/fnUCBC88bNsahNxWJvGo+ejGX9c5VnWkMU3qMdc
 DjOAhYqe2ZPk0Oo/UKsy1mJmOdYK7AlKaMquRWVGZLckKLPok7z7toeIN9JvPti648
 PMzC+j4C1GdHy0v24Ktb7YxtKP06Uzy/rZUrt8bUqr0FhrjI6mK6/OLvHfDvIHbje7
 J4SYOd1568VbQGmtn4bOK0J3waAOcmyWsvjwgDvyl5Nr+oiXBAaUiviu3INTlR669A
 E7wHid4G+gdeYN3fGi5g8Hnwo0SdCa7q/ctOjVxJiRZzmX3UXS+LxSgMjFrd04COxw
 kibhraAA+ywJQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d7408ffe;
 Sat, 9 Jul 2022 20:50:45 +0000 (UTC)
Date: Sun, 10 Jul 2022 05:50:30 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsnqFqQodj9khp3Q@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <1690934.P4sCSNuWZQ@silver> <YsmT7WHDh9NXZ/nV@codewreck.org>
 <2211309.MyIe47cYEz@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2211309.MyIe47cYEz@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sat, Jul 09,
 2022 at 08:08:41PM
 +0200: > Mmm, I "think" that wouldn't be something new. There is no guarantee
 that > client would not get a late response delivery by ser [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oAHPl-0004HK-Lz
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:41PM +0200:
> Mmm, I "think" that wouldn't be something new. There is no guarantee that 
> client would not get a late response delivery by server of a request that 
> client has already thrown away.

No. Well, it shouldn't -- responding to tflush should guarantee that the
associated request is thrown away by the server

https://9fans.github.io/plan9port/man/man9/flush.html

Order is not explicit, but I read this:
> If it recognizes oldtag as the tag of a pending transaction, it should
> abort any pending response and discard that tag.

late replies to the oldtag are no longer allowed once rflush has been
sent.

But I guess that also depends on the transport being sequential -- that
is the case for TCP but is it true for virtio as well? e.g. if a server
replies something and immediately replies rflush are we guaranteed
rflush is received second by the client?


There's also this bit:
> When the client sends a Tflush, it must wait to receive the
> corresponding Rflush before reusing oldtag for subsequent messages

if we free the request at this point we'd reuse the tag immediately,
which definitely lead to troubles.


> What happens on server side is: requests come in sequentially, and are started 
> to be processed exactly in that order. But then they are actually running in 
> parallel on worker threads, dispatched back and forth between threads several 
> times. And Tflush itself is really just another request. So there is no 
> guarantee that the response order corresponds to the order of requests 
> originally sent by client, and if client sent a Tflush, it might still get a 
> response to its causal, abolished "normal" request.

yes and processing flush ought to get a lock or something and look for
oldtag.
Looking at qemu code it does it right: processing flush find the old
request and marks it as cancelled, then it waits for the request to
finish (and possibly get discarded) during which (pdu_complete) it'll
wake the flush up; so spurrious replies of a tag after flush should not
be possible.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
