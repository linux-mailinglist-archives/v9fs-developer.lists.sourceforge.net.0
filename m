Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C3AF398D
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 21:33:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSoTJ-0003eh-Sa; Thu, 07 Nov 2019 20:33:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <choimj@isd.co.kr>) id 1iSoTF-0003dz-66
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 20:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjFBLg4feocA67R7Snn9hTAVTjuyOGDS6JZdh5yPjk4=; b=GLcAbrWn5NE/qpOs7YxggvHnxE
 GGV4o3hVXMLVU6Vq8x28CpKkVNlTTkqSeh6Eh16F1eabJnD3AhhPK5BW3ZgL7OIjxTnJzKt0REtCa
 ZAnxTIRwwx6sp8EGG8AYcKTobKHSr3U5ySz6JtSb8XKbkfjREs178n3wXLstXnIq3jIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CjFBLg4feocA67R7Snn9hTAVTjuyOGDS6JZdh5yPjk4=; b=h
 UFpu4mBMpvWWfOZK22u7G8HwHSz4/IPm3hMya4eQ6n6BT34XUMfeGVGz7yjbCof2Hjwq8H0oIowPC
 dUhCIzm908QvIqTckf5NPiV8YbqcN/J/mugmUxpnir2m1ztYZuPUasihZ2cn4SKKPnx+MVl1rP1TS
 nhZ10ZppYkGilSjE=;
Received: from [211.53.128.215] (helo=MAIL.isd.co.kr)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iSoTC-0049UB-Kc
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 20:33:33 +0000
Received: from 192.168.1.3 (217.217.179.17) by MAIL.isd.co.kr (10.10.10.22)
 with Microsoft SMTP Server id 14.3.123.3; Fri, 8 Nov 2019 05:33:15 +0900
Date: Thu, 7 Nov 2019 21:33:13 +0100
From: Peter Wong <choimj@isd.co.kr>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <26677437.77465.1573158795855.JavaMail.cash@211.53.128.215>
MIME-Version: 1.0
X-Originating-IP: [217.217.179.17]
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [211.53.128.215 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (pw178483[at]protonmail.com)
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSoTC-0049UB-Kc
Subject: [V9fs-developer] Investment opportunity
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
Reply-To: Peter Wong <pw178483@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,

Find attached email very confidential. reply for more details

Thanks.
Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
