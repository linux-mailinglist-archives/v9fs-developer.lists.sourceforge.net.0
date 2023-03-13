Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1456B7F50
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 18:21:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pblrb-0005RR-A3;
	Mon, 13 Mar 2023 17:21:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sales1@asda.co.uk>) id 1pblrZ-0005RG-Fv
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1u9ZmIrk7cdwILL2n/eOikYVXrVoLQsBmtvhS8w77RY=; b=hwdprhGSAx6ZNsl8tuthTKTiYX
 q3Qul/eFziNKIy/mEsHYPQBlKOKP7KH/Byrr2gXgUjK492J+r8rgLNrJDOwVjMZvPmvSV0GREyiAQ
 IIQm8zH2g35cfgnJlGHc0mdP8a0t8qvgG7mHzQfXVqc/7Ggk7wmAtWt5FR08viPJBoOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1u9ZmIrk7cdwILL2n/eOikYVXrVoLQsBmtvhS8w77RY=; b=d
 HTM2LnVdD42kigje7q3YaPAHFror4SBTILJouMkaHWr8WfvDfgWgd3u77KOpF7BfbVoCaOwaEkKTn
 Qhe5gLJUoJOjpDvLSvVPl3kmNj9tXvHgPi6BPu5GO8Lq3+az8hamC1bI+r00VXJ3DlQLJeZhhjooL
 yPRkuWN6fnmioeJE=;
Received: from [103.30.145.160]
 (helo=defaultworkshop.klidefectmanagement.com.novalocal)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pblrR-00075s-Qi for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 17:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asda.co.uk; 
 s=x;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1u9ZmIrk7cdwILL2n/eOikYVXrVoLQsBmtvhS8w77RY=; b=E
 pDiaBk+2AMAupp2bQDZqXg6JJH8dZHULcey/QRMaeOdbya+Bk9qYxyMvZqUz3xNGJNmqGp7ru9rzw
 HCm1lJm3+aWTbBVv9FNAXiG07Nu9JyXlZgeXJiWvDawbQL+/FdAO3LJRLSsbw3n+huWK8RQTlzUHo
 /uP5YGtlfBeZuvdc=;
Received: from ec2-52-11-215-80.us-west-2.compute.amazonaws.com
 ([52.11.215.80] helo=asda.co.uk)
 by defaultworkshop.klidefectmanagement.com.novalocal with esmtpa (Exim 4.94.2)
 (envelope-from <sales1@asda.co.uk>) id 1pblrG-0005GG-Kg
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Mar 2023 00:21:15 +0700
From: ASDA Stores Limited <sales1@asda.co.uk>
To: v9fs-developer@lists.sourceforge.net
Date: 13 Mar 2023 17:21:13 +0000
Message-ID: <20230313152049.A4DBE1DA2DBCB2CF@asda.co.uk>
MIME-Version: 1.0
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dear v9fs-developer I'm a procurement manager with ASDA Group
 (the owners of ASDA Stores) and your company product has caught our interest.
 Therefore, we request you send list and prices of your hot s [...] 
 Content analysis details:   (2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pblrR-00075s-Qi
Subject: [V9fs-developer] First quarter procurement order/enquiry
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
Reply-To: sales@asda-c.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear v9fs-developer
I'm a procurement manager  with ASDA Group (the owners of ASDA 
Stores) and your company product has caught our interest. 
Therefore, we request you send
list and prices of your hot selling items (products) for our 
evaluation/pick.

Soon as we receive your reply, we shall send you our company 
profile and buying proposal. You can also check our website below 
for detailed info of our purchase area and trading capacity.

Your immediate response E-mail:  sales@asda-c.com   shall be 
appreciated.

Best Wishes

Ms Stelle Montgomery
Purchasing Dept.
ASDA Stores Limited
Tel:  +44 7418367220
WhatsApp: + 44-7502985874
Website: www.asda.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
