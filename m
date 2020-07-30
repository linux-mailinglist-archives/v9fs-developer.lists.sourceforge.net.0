Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E31A2338EA
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 21:24:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k1EAT-0000xA-6o; Thu, 30 Jul 2020 19:24:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sm@mirdoraghi.ir>) id 1k1EAR-0000x1-Nf
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 19:24:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x2sUyHyMlYiY+SqcgExGcb1cT8rLtpfsXc+JnPDKJmQ=; b=dATuza1unAY22F0RjjXDsgdwxC
 o1vO5bCfOKU+XnDIbOmSR58JxRp9R+L48ok/FvG9rdG4e1hZc5Q6SHhQ/fIPlg9YKws8rwa3pzOlr
 BVwTF0h6WJ9Sc5Wu1fRwicD7J44BRY83zNVmB+QlAX7Ok8QKgohnGR0XXgEPlQX481Fw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x2sUyHyMlYiY+SqcgExGcb1cT8rLtpfsXc+JnPDKJmQ=; b=h5gcogbNpLLD+MHi/AjM5pEXS8
 FFSomjg4nGpiz4a2xtPRJYFivFTwJGis5r6p1OsO2gPy6NZhwvFsU3vWiTOwnsbPbuqjFGJOvk7YL
 JnGrKZoEJKHXzenHqE+EWmq+7YP2FHzcmA2f7KZSBCm9MTPXZS2FR9VIxau3T/fHLIIg=;
Received: from static.76.64.203.116.clients.your-server.de ([116.203.64.76]
 helo=mirdoraghi.ir) by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1EAN-00F53T-4B
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 19:24:39 +0000
Received: from [172.20.10.3] (130.80.136.77.rev.sfr.net [77.136.80.130])
 by mirdoraghi.ir (Postfix) with ESMTPA id 10F7BD0F52
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Jul 2020 21:11:26 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "James kenneth" <sm@mirdoraghi.ir>
Date: Thu, 30 Jul 2020 21:11:26 +0200
X-Antivirus: Avast (VPS 200730-2, 30/07/2020), Outbound message
X-Antivirus-Status: Clean
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?116.203.64.76>]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [116.203.64.76 listed in bl.score.senderscore.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (trustfinance1994[at]outlook.com)
 1.0 MISSING_MID            Missing Message-Id: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k1EAN-00F53T-4B
Subject: [V9fs-developer] BUSINESS PROPOSAL
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
Reply-To: trustfinance1994@outlook.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1k1EAT-0000xA-6o@sfs-ml-2.v29.lw.sourceforge.com>

Hello, =

     Apply for a loan, at a 3% interest rate.

    Do you need a personal loan?
    Do you need a business loan?
    Do you need a consolidation loan? =

    Do you need a secure loan?
    Do you need an unsecured loan?
    Do you need a mortgage loan?
    Do you need a pay off debt loan?
    Do you need a project loan?
    Do you need a student loan?
       =

Whatever loan that you are looking for, kindly send us a mail:  (trustfinan=
ce1994@outlook.com)

Mr. James kenneth
Managing Director

-- =

L'absence de virus dans ce courrier =E9lectronique a =E9t=E9 v=E9rifi=E9e p=
ar le logiciel antivirus Avast.
https://www.avast.com/antivirus



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
