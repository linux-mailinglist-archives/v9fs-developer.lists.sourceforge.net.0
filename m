Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD4169A89
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jul 2019 20:09:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hn5PN-0003mb-M5; Mon, 15 Jul 2019 18:09:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sgalarza@cisecuador.com>) id 1hn5PM-0003mS-6j
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 18:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:MIME-Version:
 Content-Type:Message-Id:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=myeIWKWzn1wNUTrAwXUV9yMGPkdQV6rUsiCA9aBjYrw=; b=Ue5VBw16kaVSuimf8YdVZizp4D
 poTI1E3kB7IL0UvE7u6HeNM//NW3G1N8onOgFChu6tkUz2fkV5eTsD0KnNSzIB2TmDbOSQNs5Zkeq
 EXRp44H51PC/vbL6RQKzLmu5aV6KqkmIQ16Tc5T7uqzFn9BUutsFcpa6lwjJuA8HFIFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Message-Id:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=myeIWKWzn1wNUTrAwXUV9yMGPkdQV6rUsiCA9aBjYrw=; b=g
 K3cH9vIa+ApclvtoCM5lj9xzy4eq5TV256XGKyVeK+5ISlSLEimFu8hWz2q1iaPeydqWaoTmbFsIF
 S2LQ4BLcXJwsfo/YM400l1eCFpe1mCTz1GQJ5KOQWgcXwcinB9ql8GPZ35nd18oktEHXoku7yEu/f
 kODyyr6n+YpKGxmY=;
Received: from mail.cisecuador.com ([181.112.216.114])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.90_1) id 1hn5PK-002EyA-G5
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 18:09:04 +0000
Received: from [102.165.33.185]
 ([102.165.33.185])(authenticated)bymail.cisecuador.com (MYOB) with ESMTP id
 x6DJoo1X014697for <v9fs-developer@lists.sourceforge.net>;
 Sat, 13 Jul 2019 15:22:39 -0500
Message-Id: <201907132022.x6DJoo1X014697@mail.cisecuador.com>
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Mariah Hills" <sgalarza@cisecuador.com>
Date: Sat, 13 Jul 2019 13:22:23 -0700
X-KypusServerAppliance-Kypus-MailProtection-Information: please contact your
 Internet E-Mail Service Provider for details
X-KypusServerAppliance-Kypus-MailProtection: Not scanned: please contact your
 Internet E-Mail Service Provider for details
X-Kypus-MailProtection-MCPCheck: 
X-Kypus-MailProtection-From: sgalarza@cisecuador.com
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [181.112.216.114 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (mariahhills00[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 2.0 HK_SCAM                No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1hn5PK-002EyA-G5
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Business Proposal
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
Reply-To: mariahhills00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good day,
  
 
I have a business to discuss with you. *Please do not ignore this message, just let me know you received it and I will tell you more about this business which will benefit the both of us.
 
 
Thanks and I look forward to read from you soon.
 
 
Warm Regards
Mariah Hills.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
