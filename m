Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8511B9521
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Apr 2020 04:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FpuQED3YP80frhhAxlO9B0QYG2KfSNGAw31EIVNORF0=; b=J1M4hvBT0R6jj2bBliHZZjt5J6
	tOHNJx1+1KMjhsnly5YrnE3834bxgajUcpFkXqmmp0RdPmpDoGPi12xM3iMj30Im5csXZuADJGLAG
	nwnkDrAnwuolvKyOOjx2Hdcah2rU2HQbluo/TZ8YAmQHfccjzqRiNmnnGtGYUs1NEH8Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jStZR-0006nt-NE; Mon, 27 Apr 2020 02:32:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info2@rokafil.org>) id 1jStZP-0006ng-V3
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 02:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pSfNZ4uiS4e9tLPZyuyrkSIZK2qJMOyFS6Z8kp28SXQ=; b=VPMk9m3/OHwwbidApNujfxKJRf
 g4Rat4Yr8xgDUcjuuJ0/UR/4ZAc57IhXoka3/f013uIrb2p5xCew6n1jiizqZ2flv4Q+Z26+v+W2J
 7bJEGq+yjNVxjp0nvPC4M0LLKKqqc6DOszWyHvBTfvWPKJA01tuoR9z1KQoci0gUgYq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pSfNZ4uiS4e9tLPZyuyrkSIZK2qJMOyFS6Z8kp28SXQ=; b=Q
 WvZwuvKhkAuq4l+n9KP9xCcrBq6Jsl40n6fvOUgQhHvw3G+ZPgrDSleDHthturIAxQ/XOIb4RhnW+
 gs9pCCH0UdUfw5EDwB7No+D6FpMiiL9cOIgEo9KZ3E4ww4ncRtErZDY1xygth3mO2kLZ6qffaDfHK
 JeFrnZ/NdoXyEqEY=;
Received: from [64.235.41.184] (helo=mtk1.rokafil.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jStZN-00Gt0t-67
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 02:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=rokafil.org;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=info2@rokafil.org;
 bh=pSfNZ4uiS4e9tLPZyuyrkSIZK2qJMOyFS6Z8kp28SXQ=;
 b=SKXROfiDj3Irmp7unI/3k5ogdUYwIK0j20J1f5d1siMRcKzSP4PNXstJDs8DuTQKqcnniEYVt8og
 f+W+ND0z1gLkYwMHn2NcH9ebcJ82Ici4h/EcocmHn8MmqrEHybIGdWMyog4oZQwFu/g7e/mrnPLo
 8lwVyuKw7cGml0CUfFs=
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 26 Apr 2020 19:12:25 -0700
Priority: urgent
Importance: high
Message-Id: <26242020041219E4AFA1DF27$7F2881AD90@WINRVRAQDHB>
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1jStZN-00Gt0t-67
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] New Order_27_04_2020
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
From: Olivia Robert via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Olivia Robert <info2@rokafil.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hello friend,

Our partner recommended your company for us.

Attached below is our order, please check and get back to us soon.

Nancy Antonio

Tell : +55 8 3792 6439 Fax: +55 9 3872 739

M FIRST POLAND G. GOINGWAYHIGHUPZ CO.,LTD

BOC Head Group Quarters. Brazil Company (B.H.G.C.). P.O. Box 12738

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
