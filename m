Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B953931D124
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 20:48:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lC6KY-00060A-S3; Tue, 16 Feb 2021 19:48:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <irdhk@outlook.com>) id 1lC6KX-000600-Kq
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 19:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cE155h6J5f3akebHco2dEe+Ctg06tniQKOtrBZbMGm8=; b=KMc/WyZCTS8HawbO4ihIS8hKXm
 ci5pdiVZ0ECNvUL2vFrUD5DqZ8KoGOjiekqXl5wxMLdv1Fug8cn9hZXsg76I1gSRJNwv42Ip/VuOi
 x0cSc2LMLrKMirrVe9mq6q65nW+43nJEfnDeV9PnZkCaB/LE/frmOcgnHX/LrQlpFUMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cE155h6J5f3akebHco2dEe+Ctg06tniQKOtrBZbMGm8=; b=M9FvmXTMyKrr6kn0I1q+enoPLx
 7+c3NuPQIgQCwgEHh4w4sDSJwadv1Z4eRVY9GkurEqdL4Ax4Cenc5Gxtpek8kIQUGICZuBSFsA2kS
 bVsvgzoiZho2SG0PVNL6sxmgm5a8rumbUKdpZBzS7NYnHcbu+ydPyZlR5d6gW3RWfkho=;
Received: from ppfins.ru ([89.108.126.37] helo=mail.ppfins.ru)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lC6KN-0004yI-1j
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 19:48:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.ppfins.ru (Postfix) with ESMTP id 8F40EAA2C2F9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 22:46:43 +0300 (MSK)
X-Virus-Scanned: Debian amavisd-new at ppfins.ru
Received: from mail.ppfins.ru ([127.0.0.1])
 by localhost (mail.ppfins.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Um6ItB_61etO for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 22:46:43 +0300 (MSK)
Received: from [37.46.150.52] (mx52.allspecialoffers.xyz [37.46.150.52])
 by mail.ppfins.ru (Postfix) with ESMTPA id 61E9DAA2C53C
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 21:18:25 +0300 (MSK)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Francis" <irdhk@outlook.com>
Date: Tue, 16 Feb 2021 19:17:36 +0100
Message-Id: <20210216181825.61E9DAA2C53C@mail.ppfins.ru>
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (irdhk[at]outlook.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (flacson9009[at]gmail.com)
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails 1.7 SPOOFED_FREEMAIL       No description available.
 2.3 SPOOFED_FREEM_REPTO    Forged freemail sender with freemail reply-to
X-Headers-End: 1lC6KN-0004yI-1j
Subject: [V9fs-developer] AFFILIATE
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
Reply-To: flacson9009@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I am soliciting your assistance to move an investment portfolio worth some good money from my Bank. This is genuine and I hope you'd be ready to work with me. I need your consent before I can furnish you with the complete details. Please revert for details. It is legal and genuine. Thank you.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
