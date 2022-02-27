Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C664C5F8C
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Feb 2022 23:48:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOSKk-0003zi-Gl; Sun, 27 Feb 2022 22:48:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ng@0x80.stream>) id 1nOSKi-0003zc-TZ
 for v9fs-developer@lists.sourceforge.net; Sun, 27 Feb 2022 22:48:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :From:Date:Subject:CC:To:Sender:Reply-To:Message-ID:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MdxUhMBpCt+ZSXfJqGd4wb0zRVoMX+lzjZFXDV3uuZ8=; b=OP/m20Q606zTTY3O9T1U2/cq2v
 q5MHyjR3XELXBybyBtWD/N64rZtXnw7DIqWNJ1Gi1ZkvdymYr2TMUPDXtDP+vUy5qFEHt6KS00kha
 lbGueirSCwUzDZZKh3AV4bhGsj4JP/Zm4sPq+2kf6wnJgfROYmdPATznzTdhGqnbD9E8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:From:Date:Subject:CC:
 To:Sender:Reply-To:Message-ID:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MdxUhMBpCt+ZSXfJqGd4wb0zRVoMX+lzjZFXDV3uuZ8=; b=R
 M7/gRQShFuq8vgTL4UtT6cTBx4CVl7ecGKM1e63H9u9AOOhOywdu0RQ/TXrhtgg4a+pLMOstcF2Ck
 NufzAsfCjiRsqBpTFTKC12OmCJbgPJyvRZiwB4N1FJgKovWjZCbMzssTbKu49UTPeNcC7xHX1bor9
 IaXXOgdQXC3c9IGM=;
Received: from eva.beecloudy.net ([145.239.136.208] helo=penelope.mx)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nOSKf-00H99d-LX
 for v9fs-developer@lists.sourceforge.net; Sun, 27 Feb 2022 22:48:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 416DC23BDAB;
 Sun, 27 Feb 2022 23:31:29 +0100 (CET)
Received: from penelope.mx ([127.0.0.1])
 by localhost (penelope.mx [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxm1ChTTSAnL; Sun, 27 Feb 2022 23:31:28 +0100 (CET)
Received: from localhost (unknown [37.228.246.218])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by penelope.mx (Postfix) with ESMTPSA id 28AB923BD13;
 Sun, 27 Feb 2022 23:31:28 +0100 (CET)
To: asmadeus@codewreck.org, rminnich@gmail.com
Date: Sun, 27 Feb 2022 22:31:27 +0000
From: ng@0x80.stream
MIME-Version: 1.0
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Quoting Dominique Martinet <asmadeus@codewreck.org>: > Hi
 Ron! > > ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM -0800: >> I
 did a lot of measurement of 9p over the years. There is no >> fundam [...]
 Content analysis details:   (2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 2.0 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.1 MISSING_MID            Missing Message-Id: header
X-Headers-End: 1nOSKf-00H99d-LX
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: ericvh@gmail.com, lucho@ionkov.net, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1nOSKk-0003zi-Gl@sfs-ml-2.v29.lw.sourceforge.com>

Quoting Dominique Martinet <asmadeus@codewreck.org>:
> Hi Ron!
> 
> ron minnich wrote on Fri, Feb 25, 2022 at 09:35:50AM -0800:
>> I did a lot of measurement of 9p over the years. There is no
>> fundamental reason for it to be slow.
> 
> Yes, honestly 9p itself shouldn't be that much slower -- I've been
> thinking the same when qemu came up with virtiofs, if the amount of work
> that had been poured into it would have gotten into improving 9p we
> would all have been much better off...
> alas it seems that it was easier to start from scratch there.
> 
>> Further, there is no requirement, in the protocol, that IO operations
>> be serialized.
> 
> I've played with that (in a userspace client):
> https://github.com/martinetd/space9/blob/master/src/9p_libc.c#L820
> 
> It's been a while but you can definitely get wire speed with that.
[snip]

Forgive the naive question, but would this change entail that a
client may not observe its own writes? (Because the client may send
Twrite and Tread but the Tread may be served first, I mean.) Isn't that
undesirable? What do other file systems do?

[snip]
>> The first step, in my view, would be to implement the kind of
>> pre-fetching that NFS has always done (I measured that one too, a long
>> time ago ...) and see if it helps. The additional extension, that a
>> clunk serves as a sort of fence on pending operations, would need to
>> be done at some point -- maybe. But maybe we could just use fsync on
>> the client side to mean "wait for pending IOs to finish".
> 
> afaik with David's fscache rework we've gotten this for free if you
> use any of the cache variant (fscache or loose).

I will have to try that!



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
