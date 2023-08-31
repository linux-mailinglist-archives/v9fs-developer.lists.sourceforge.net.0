Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0970A78E3EE
	for <lists+v9fs-developer@lfdr.de>; Thu, 31 Aug 2023 02:27:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qbVWm-0002eB-CI;
	Thu, 31 Aug 2023 00:27:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <email.sites@saocaetanodosul.sp.gov.br>)
 id 1qbVWl-0002e5-RP for v9fs-developer@lists.sourceforge.net;
 Thu, 31 Aug 2023 00:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M7prE6THlQQVqgLJjMhAV/tA4aCjgt4l4KZt7VvwJD8=; b=XfAXtZp6wOuwjHmvSbauyG4cT7
 QTRzvB5RGYS0Sz9pOYwtnFlbDZhOQd5G3y0T/D46qsOIOgmS7AMwPdZLkTwib4Qltrm4GFyG7CKSk
 jtx85L56cT8VKKTcIV7UCT4pp5uWeWpLZIfZ5DQWZNfyaOQovncGpnYV3XkYXZ8N26oc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M7prE6THlQQVqgLJjMhAV/tA4aCjgt4l4KZt7VvwJD8=; b=c
 2CJ7wo9fdc+KFlmc2ffFntr4NauxktVE0sbS8voBFZCI2bu+CHYyQsSHEKmxLTl7vcwidgukzWMew
 Qc88O+vcpUqzGcaRqTTyJ032U2XgEJvzygZl6xwL2HxcfQmqzzn9tJI5FvK4jqRtyjLye3YUwzIkB
 rpmZihhGg9S78irA=;
Received: from smtp.saocaetanodosul.sp.gov.br ([200.205.10.253])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1qbVWl-0001JH-Nn
 for v9fs-developer@lists.sourceforge.net;
 Thu, 31 Aug 2023 00:27:16 +0000
Received: from WIN-CLJ1B0GQ6JP (38.170.239.59) by
 smtp.saocaetanodosul.sp.gov.br (192.168.42.141) with Microsoft SMTP Server id
 14.3.498.0; Wed, 30 Aug 2023 21:16:46 -0300
From: Kevin Wheeler <email.sites@saocaetanodosul.sp.gov.br>
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Wed, 30 Aug 2023 17:16:46 -0700
Message-ID: <2236121175831223207@smtp.saocaetanodosul.sp.gov.br>
X-Originating-IP: [38.170.239.59]
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sir/Madam, I have access to very vital information that can
 be used to move huge amount of money. If it was possible for me to do it
 alone I would not have bothered contacting you. Ultimately, I need you to
 play [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [200.205.10.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [kevwheeler66[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qbVWl-0001JH-Nn
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Introducing Vital Business
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: kevwheeler66@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sir/Madam,

 
I have access to very vital information that can be used to move huge amount of money. If it was possible for me to do it alone I would not have bothered contacting you. Ultimately, I need you to play an important role in the completion of this business transaction.


Reply if you are willing to do the business.




Regards,
Kevin Wheeler.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
