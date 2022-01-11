Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D08DE48AC43
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Jan 2022 12:17:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n7F9u-0004vr-II; Tue, 11 Jan 2022 11:17:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ng@0x80.stream>) id 1n7F9t-0004vc-3n
 for v9fs-developer@lists.sourceforge.net; Tue, 11 Jan 2022 11:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tYmrdC81v8vZr/W0CTiyKvyhr8tJZIPEDxz7vmTvxdM=; b=Wdwcf0DlW1sFODPAqvaER1r8s1
 VdYLDvrYvA/9Bfz166O6Z/WSOPntb1qEKhBi8zLh7G7L9PncYFvO6DrRzcgOrbC8VJdmE3pcBCEf/
 24gKrwf3Ujw38bfzfukc7ra/hO7k9C4M6ROelR8mSGwH931qVQLnEM9znyzCUYgNuW3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tYmrdC81v8vZr/W0CTiyKvyhr8tJZIPEDxz7vmTvxdM=; b=bXj2SRxFukaLFK4cGhuhzRXstd
 Nax91ZuT5kwpIZR7PILe1wh85iI2I7O5VbbUzQl1ki4A0afVc4fxuuLQ9wuaox7PleJNzU/qc9GoO
 F9yym1JinR2PflElZKtruymkMDpSfYlEOyTuSNZ3jcmHktHW3/yvAPH1IcDAdNMCcCkE=;
Received: from eva.beecloudy.net ([145.239.136.208] helo=penelope.mx)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7F9m-0003I5-SW
 for v9fs-developer@lists.sourceforge.net; Tue, 11 Jan 2022 11:17:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 697F6212B00;
 Tue, 11 Jan 2022 12:17:26 +0100 (CET)
Received: from penelope.mx ([127.0.0.1])
 by localhost (penelope.mx [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrzDx5vlsRQd; Tue, 11 Jan 2022 12:17:25 +0100 (CET)
Received: from penelope.mx (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 66CAE2127E6;
 Tue, 11 Jan 2022 12:17:25 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 11 Jan 2022 11:17:25 +0000
From: ng@0x80.stream
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <YdzHY+cTVmmX3zOm@codewreck.org>
References: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
 <Ydy1qtV68fO69baZ@codewreck.org>
 <ae62a8a6f63c83b0dfc23db11ec49028@0x80.stream>
 <YdzHY+cTVmmX3zOm@codewreck.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <cf3687f6969edd609f3d1008c543199a@0x80.stream>
X-Sender: ng@0x80.stream
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-01-10 23:55, Dominique Martinet wrote: [snip] > Most
 people seem to use it for qemu, which doesn't enforce the > limitation. >
 The other servers I occasionally test (ganesha, more rarely diod, [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: bitbucket.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-Headers-End: 1n7F9m-0003I5-SW
Subject: Re: [V9fs-developer] bad use of fid
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-01-10 23:55, Dominique Martinet wrote:
[snip]
> Most people seem to use it for qemu, which doesn't enforce the
> limitation.
> The other servers I occasionally test (ganesha, more rarely diod, and
> even more rarely suckless' libixp) don't seem to enforce this check, 
> and
> you're the first to report this problem so other users for go9p likely
> haven't upgraded yet.

Ah this gave me an idea. At least in my case, walking an open fid is 
only a problem if newfid == fid. So I introduced a bug in my fs to 
balance the bug in v9fs and things are working fine here. Thanks! :)

--- a/p/srv/fcall.go
+++ b/p/srv/fcall.go
@@ -209,7 +209,7 @@ func (srv *Srv) walk(req *Req) {
         }

         /* we can't walk open files */
-       if fid.opened {
+       if fid.opened && tc.Fid == tc.Newfid {
                 req.RespondError(Ebaduse)
                 return
         }

I'm not sure about the priority of making v9fs follow the spec but I 
checked two other servers, u9fs and then I mounted 9p.io (I don't know 
what fs it runs). For u9fs I found this check 
https://bitbucket.org/plan9-from-bell-labs/u9fs/src/d65923fd17e8b158350d3ccd6a4e32b89b15014a/u9fs.c#lines-477 
and for 9p.io I get errors when listing, presumably for the same check. 
I also found the same check in 9front cwfs 
http://git.9front.org/plan9front/plan9front/538b8107122d55be6a941384dc499d56b35f99e1/sys/src/cmd/cwfs/9p2.c/f.html 
(function 'walk').



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
