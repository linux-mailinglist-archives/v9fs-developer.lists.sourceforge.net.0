Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A25C721537E
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Jul 2020 09:50:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jsLto-0006Nr-0d; Mon, 06 Jul 2020 07:50:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17355503-b537-v9fs-developer=lists.sourceforge.net@em5029.noobmk.com>)
 id 1jsLtm-0006NE-Kb
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Jul 2020 07:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=abLyFmJljsNkzxdZzDHY49zi6s
 fL1NHdOfDyqzCdjgE2TTw/X2UEBFfaC3Dw4xrgrSNB3wPLsXeGgYo4F8wWnJjLUYiW5sPorlYTPE4
 B7AIDhx9Iw9aT5wUjavxXmAXso0zx/zxE7yKFfdNyZpzPbK8SpfosZWXt4qseYkQl3sE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=Q
 wxIvWqpEVgslIX7zWukb4bp0biUnvQ05aErzlCD2DMKhn1q9UD5IMwRsV/xeLtYD7c9Oa6HXkHOPH
 VDRpczfHJNkWtd/TkvrJc4zK5bMK+Ox24dcGzIzC5sLWHcQJD9EL3Z6/LySWNKGqruTNETXsdVHlX
 MSj8jecoi05Gf7ac=;
Received: from xvfrpxhc.outbound-mail.sendgrid.net ([168.245.58.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jsLtj-00EmYQ-W9
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Jul 2020 07:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noobmk.com; 
 h=from:to:subject:mime-version:content-type; s=s1; 
 bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=ofBJ/2Dr9fKvz
 As6V+beOk5so4ar7q0GQ9hFZlzPGTuEMv8evGeOqr9nudxlr22rIzHVuzgbjyaAv
 vONU9bQOrYuvzfjZ7RtXDD8F2uzXAA7ZZwfzBBNMxglffvjlcEA85H0uZ4Pvy5fU
 fACycp1/G4EMvJsjD0FAZMkOh+nXDE=
Received: by filter0885p1iad2.sendgrid.net with SMTP id
 filter0885p1iad2-3997-5F02D7C6-1B
 2020-07-06 07:50:30.986612219 +0000 UTC m=+548111.303984525
Received: from Amazon.co.jp (unknown)
 by ismtpd0022p1las1.sendgrid.net (SG) with ESMTP id NyIBigG6TDaY-67RzJSshw
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Jul 2020 07:50:30.698 +0000 (UTC)
From: Amazon <Amazon@noobmk.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Mon, 06 Jul 2020 07:50:31 +0000 (UTC)
Message-ID: <0077b2245809$e1299365$84e57712$@Amazon.co.jp>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKEpUXz7rjP/m8VS
 q7oDdNaogqGmdrLk2glpiejSPFkQ+ZCNYBSf3zhagIgFHgje6COIaWGNtHwz3eMrRF3HVlAeneXvBs
 0m415yQUoZBYp28+0oFQ8TMmkVCAXI/n3AkAAKSMAsks7qJOCoyb6lhMOX1/OyMV2fFQufcKJ0qrMS
 w=
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [168.245.58.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [168.245.58.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 T_REMOTE_IMAGE         Message contains an external image
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jsLtj-00EmYQ-W9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?iso-2022-jp?b?GyRCJCo7WUonJCRKfUshJE4+cEpzGyhC?=
 =?iso-2022-jp?b?GyRCJHI5OT83GyhC?=
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
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

お支払い方法の情報を更新してください。Update default card for your membership.

 
 マイストア? タイムセール? ギフト券 

 


Amazonプライムをご利用頂きありがとうございます。お客様のAmazonプライム会員資格は、2020/06/09に更新を迎えます。お調べしたところ、会費のお支払いに使用できる有効なクレジットカードがアカウントに登録されていません。クレジットカード情報の更新、新しいクレジットカードの追加については以下の手順をご確認ください。



1. アカウントサービスからAmazonプライム会員情報を管理するにアクセスします。


2. Amazonプライムに登録したAmazon.co.jpのアカウントを使用してサインインします。


3. 左側に表示されている「現在の支払方法」の下にある「支払方法を変更する」のリンクをクリックします。


4. 有効期限の更新または新しいクレジットカード情報を入力してください。



Amazonプライムを継続してご利用いただくために、会費のお支払いにご指定いただいたクレジットカードが使用できない場合は、アカウントに登録されている別 のクレジットカードに会費を請求させて頂きます。会費の請求が出来ない場合は、お客様のAmazonプライム会員資格は失効し、特典をご利用できなくなります。


Amazon.co.jpカスタマーサービス 




 
支払方法の情報を更新する 



 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
