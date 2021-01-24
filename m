Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE547301D1E
	for <lists+v9fs-developer@lfdr.de>; Sun, 24 Jan 2021 16:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rhkyy0SfiTiH+SLmSqZqteKym+BSdjIT49iWrBR6rw8=; b=l7V5ZfWo15ex7tkxLB1ngM/kFN
	6Yg/XT7VjypJ83bWG/Qyif0tWB8cT4y3WZWS/WOW16h0KDBnX+Ozcsl5X18ym5rNTZ2duptoxK2ML
	YdjmXezKZT2mL9uTvRT4+asKVmx05LoMIGbdWgLJKoG6QpXZjFdNxc5D/onQ7wk2LVUE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l3h8M-0008Rq-98; Sun, 24 Jan 2021 15:16:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@aqucknews.life>) id 1l3h8L-0008Rj-Gc
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jan 2021 15:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=NdsYC48cDyhyss9gVgDPtHEoVb
 7ltlemhKB3TeWC0rZG1EObjRDe4idNXZC/9ramkFI7mod77pOlxe62ki3jAPq8XQjy6zJvt7UCLvo
 nI1muei/Wfia3LtvMgleKRyli+tJEcF39Fyj5/efB4fHcCjOMy1oPdGguuMdo9WH8j34=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hcd3Mcj37xuFt6bpykaoVKLMj/k1jF3cQMBr6UdVzpo=; b=ejKdN66II7fqfoQL9/H1e2uiZ5
 2O6qWnSoWQA9mDHMJu36D0mfeNz2Fj0lQJ4TXDOtkKhCAtSbJWHQDmR9F5CTCCrC7tx3UQrv6lRxU
 qN2BCNXbqBBGg+YKi249PMZu05iIugnYLZ/tnayCU+tF19ItFDSESLDYWiFPisc9hys0=;
Received: from aqucknews.life ([106.75.129.228])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l3h8G-00HT4j-UY
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jan 2021 15:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=aqucknews.life;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@aqucknews.life; bh=eqRtB57Z7AYWf3yX2PvA9phb5ng=;
 b=jjc/HBap6Hc/pesNJJSG1W8Cw7gg0fC57jjqbtY0KZ2RBNfeRpw3DCv8czs/mideY29+AZvTvhC3
 aEa1wJaotItIFWZasSITpg/3R9gxkmrmeej509hEJYe68fm33wxeJ83rDR1mGjqFokRMb75E0hmw
 /Fv7JGwNMxbGp8lQyhg=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=aqucknews.life; 
 b=jBlQDMD1REij2zSYGZbLcWvajnvv+cYOGkK8rD3K/8/4sCoecI56+xi+qHjuIYB97KdUZhwtr6So
 RvPH15bI761JG3MDfAuMzyI0T6cPI0wXAoI3VO1oLbaAAZK+2eZlRWkWCh8juUPxON+aRAQQAdxe
 RG59vshWEII7kPE8Jks=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 24 Jan 2021 23:16:26 +0800
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.75.129.228 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jacksonjrc75[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1l3h8G-00HT4j-UY
Subject: [V9fs-developer] my subject
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
From: sales--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: jacksonjrc75@gmail.com
Cc: sales@aqucknews.life
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1l3h8M-0008Rq-98@sfs-ml-4.v29.lw.sourceforge.com>

Hallo!

Ist diese E-Mail-Adresse aktiv? Ich habe Ihnen fr=FCher eine Nachricht
bez=FCglich Ihrer Spende gesendet. Haben Sie diese erhalten? Bitte best=E4t=
igen
Sie und kontaktieren Sie uns erneut

Freundliche Gr=FC=DFe
Jackson JR


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
