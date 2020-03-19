Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8487518AB05
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Mar 2020 04:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CPhDuuoh8/l82BXLVhFNyQR/OgO0lpFdAZ16Zux0n5s=; b=QulbHCkjgR/Sjep/LXfC6ebRnl
	vQEHyfQ5oEFr7IsdKo7OftW0ra2zoPGdQoTAEujzY0vJygsAUhO7IQzm/lRV5GWVo2t5TkNCsQwHd
	2HPinQ7Q7GXOrIu6lF7YDhWKnhO+lJuYZNmNI8x2yqA10siwI/Riy7dQShM7U/IiroOA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jEleM-0002np-Ge; Thu, 19 Mar 2020 03:15:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin34@kennedyllc.org>) id 1jEleK-0002ng-V6
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 03:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dNcCRQL4Y9SIta1unPl9IwCCY19Z3Rt9rN39iBpxvUg=; b=QEZuG/r2I+FGSg+sHyWxslGxIJ
 4wpJ5yUvbzY+EgyQeB6eeqNKoVr4jVfsvWji9BzBuZs5+Dv4VfWPPEroTRS1QothN7vt8tPoROvl8
 VIMihkssII8ckjSCYmzzozmhmUMcBXWFJcWKGJEHYu6hanWLQqP4GIC15tf0yVLBLPq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dNcCRQL4Y9SIta1unPl9IwCCY19Z3Rt9rN39iBpxvUg=; b=L
 tAmI2YFFeLej31xOJelWaX78ND6RS+lSVEYTNkNswUMlbgrTmUpwLuocWkKcmEjzBPoxUoI0I04pT
 F2yoCI9RTQ0+FJoMWoNp1aZWx7jhGJS0XaC8fKCR29PwrBpE/bqK+bHD5hGgzfMFuKEQQ9A80J0+a
 PgRpdHUNHilKz4j8=;
Received: from [216.108.228.138] (helo=vks0.kennedyllc.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jEleF-008QVo-TM
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 03:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=kennedyllc.org;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=admin34@kennedyllc.org; bh=jptwOQycPESI5oz6yiv39NR4WxA=;
 b=LLQm/45X22dAV1KQRQpS1AMhgWPOFNH564DN0ZlJhh3NZWLOVLC9ls1OEtmATM/YMRyRH9VrFdBW
 Y7FZCY5E9QeWzWzrD/FuHoc3exhxKU2RdouqdDODQWnzT4/P1YSdwCwh3nnwOzsRoZJPstUXmBHO
 GewK5gbmIKU0PHcoT2Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=kennedyllc.org; 
 b=dIn2IQ1rbBMQ4KLozTZcDPO/I3Ho7A9xIKYv6EzBIG16RHV7fFFDVwmyzmcare1CJuQR/U6m4AOE
 dejegk2y6V1ZQHBjtPTXOB5tE27HWdA4kzEmZcvi5gJwu6qFhiRyiHx/jmCwBr5QhKCZyQqsiFRP
 AKAkHlxvbZEE6jPMFzY=;
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 20:15:07 -0700
Message-Id: <180720200315208A77ACEACA$74ED40472F@WINAFSJKEP>
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jEleF-008QVo-TM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your items have arrived
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
From: DHL Express via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: DHL Express <admin34@kennedyllc.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


DHL =


DHL Shipping Document/Invoice Receipt

Dear Customer,
Your parcel sent by your customer arrived at our office. Here is your shipp=
ing Document/Invoice and copy of DHL receipt for your tracking.
Kindly follow below instruction to view your package and confirm accordingl=
y, to enable us submit to our outlet officer for dispatch to your destinati=
on address.

View shipping document here https://storage.googleapis.com/dhl2/cn.htm?emai=
l=3Dv9fs-developer@lists.sourceforge.net

We will be glad to see you again!

DHL customer service Expected Delivery Date:March , 20th 2020.
Dispatch Department
DHL Worldwide Delivery =


This is an automated e-mail message, please do not reply directly. If you h=
ave any questions contact us.

Deutsche Post DHL Group =


=A92020 . ALL RIGHTS RESERVED.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
