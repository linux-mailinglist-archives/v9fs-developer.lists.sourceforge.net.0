Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E86439506
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jun 2019 20:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:Message-Id:To:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mr04UvSWkDXNLf2KWNXmTLlCFoafhv8C3sB2wBqY3zY=; b=csQuAfGFHDupEmJ3kWgGRF1IRa
	Y8hkMW2UKqigu0lDlV4Jpsv4kh3n8VSGqHbIDYVSkIHM4OEkAjeWHWW7TSdnAu/6RmzaUQjrdL+IQ
	NJJhYLYili3u7PBPXD8doT+tdk1D6OaQ56RkbvUw0olDThcHSeHhHKctjwy9vVVuLX4c=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hZK38-0003bJ-Ii; Fri, 07 Jun 2019 18:57:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wouicynajwm@yahoo.com>) id 1hZK37-0003b5-Np
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jun 2019 18:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Subject:Reply-To:To:From:Sender:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uRKRrgQXag2b64w+AmkD6HrZ+/uMZIJUXAPqrlmrOqU=; b=kQ/LOMdnju2KBoyjYViTGg5ZXJ
 k8m7v7CltBlAVSSFWaEG5zAfR7/unVVkYgHkVC0ALVZqipUD6vefJ9pYn4DC5QNjXsDFxRShMD0s4
 YACnb8tj+Jm7SAD/vTehkWqhU1Y3yAzxkIkkV6Bw2u9Ym+qHQ5US9AERBx7fKhL3Vxzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Subject:Reply-To:To:From:Sender:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uRKRrgQXag2b64w+AmkD6HrZ+/uMZIJUXAPqrlmrOqU=; b=cD7fCF1HZS+ka1264480PtM0+5
 QBG7+2wL11E7HiKaew0E5oRHAUZdj1Tgyhhl4A2W4hURMfNvtQ6LxFEt95F3x0/6/O8ysmfgjolHf
 K3oRiI95RzT+wAdnIZalB2eH4jg3pZwoVu6dFKAdy0HNe1VCtAgbKRDt8BAwUBpNnMlY=;
Received: from [178.128.40.87] (helo=TEST.localdomain)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hZK36-000GgG-DH
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jun 2019 18:57:13 +0000
Received: from localhost (TEST [127.0.0.1])
 by TEST.localdomain (Postfix) with SMTP id C8ED012293D
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  7 Jun 2019 18:15:01 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
Message-Id: <20190607181501.C8ED012293D@TEST.localdomain>
Date: Fri,  7 Jun 2019 18:15:01 +0000 (UTC)
X-Helo-Check: bad, Forged Fake (TEST.localdomain)
X-Spam-Score: 6.0 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.5 VA_HELO_CHECK          Host Used Invalid or Forged HELO/EHLO
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (wouicynajwm[at]yahoo.com)
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_SORBS_DUL      RBL: SORBS: sent directly from dynamic IP address
 [178.128.40.87 listed in dnsbl.sorbs.net]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.3 PLING_QUERY            Subject has exclamation mark and question mark
 0.0 TVD_SPACE_RATIO        No description available.
 2.5 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1hZK36-000GgG-DH
Subject: [V9fs-developer] Zdravstvuyte! Vas interesuyut kliyentskiye bazy
 dannykh?
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
From: v9fs-developer--- via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: prodawez@armyspy.com
Cc: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zdravstvuyte! Vas interesuyut kliyentskiye bazy dannykh?





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
