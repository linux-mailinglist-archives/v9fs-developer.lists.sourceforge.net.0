Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85515A23B
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 Feb 2020 08:39:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j1mc5-0004of-Da; Wed, 12 Feb 2020 07:39:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdap@ripe.net>) id 1j1mc3-0004o6-TQ
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Feb 2020 07:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:MIME-Version:Content-Type:
 Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eABBjUYhEVjKfUWjSrZr/TKQ71hytcCxpW/t+4+wGHs=; b=BI8j4nkM4t3/1qywClDL2JpdgT
 Jg1+CynD9roXI/IoHbhYOYj9frNhaK8hWwILFa/Xhmbhb5PE38ArGCG/bko/G7WBGlQtR3sQYf71+
 f3d2kdZit8yKuEMoU5qsCr/oCLkLWzrosFVMVRWwWFSoVLEq6MpULh25jbvWvejlkc0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eABBjUYhEVjKfUWjSrZr/TKQ71hytcCxpW/t+4+wGHs=; b=N
 Iz1VM044ktAE1GXl3aklplO1J+zF6WiU++a7lU5t8pxFSTvSkCTcy/AakqtHnPCh1L7F7ZnJkDwf9
 W8jlg+aTn+8hDDWFMbiZpjlObmkF2R3Yfmrsc8GB4TikrgvllI9FoLibeuZrVNcm6BbYUyiBNUHQB
 QQjwD12vBBFcCtF0=;
Received: from www12302ue.sakura.ne.jp ([49.212.151.76] helo=mail.infoneo.jp)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1j1mc2-00180a-I8
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Feb 2020 07:39:11 +0000
Received: from [192.168.1.15] (modemcable062.130-37-24.static.videotron.ca
 [24.37.130.62])
 by mail.infoneo.jp (Postfix) with ESMTPA id 1060B3C028B
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 12 Feb 2020 13:45:50 +0900 (JST)
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Email team" <rdap@ripe.net>
Date: Wed, 12 Feb 2020 02:23:40 -0500
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: studio41b.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background 1.0 MISSING_MID            Missing Message-Id: header
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 0.4 UPGRADE_MAILBOX        Upgrade your mailbox! (phishing?)
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1mc2-00180a-I8
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Upgrade Your Mail Quota
 v9fs-developer@lists.sourceforge.net
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1j1mc5-0004of-Da@sfs-ml-4.v29.lw.sourceforge.com>



 =

 	   v9fs-developer@lists.sourceforge.net, =


 Your mailbox quota is full
 This may cause your mailbox faulty or you may not be able to receive more =
messages on your e-mail

 To continue using your mailbox, you need to immediately upgrade your mailb=
ox quota. =


 =

    Upgrade mailbox quota here   =

 =


 Once the upgrade is complete, your mailbox will work effectively. =


 =A92020 Email security team. 	 =

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
