Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD8F60263F
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Oct 2022 09:56:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1okhSm-0003VL-M1;
	Tue, 18 Oct 2022 07:56:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cnc@e1.nkemails.com>) id 1okhSk-0003VE-N3
 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 07:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+lTqX1zqY04UOG2hU8eaELCakseWhIQFcGcMkD+VPJE=; b=RhNWNRy/GtYtD3eQcHmRKkpigA
 mUKj+tslHacEfy4CTgWHUKVDadh7+XKEMWAH9pm0lfKz4fPxS3u5RoP2jwweQwBsQG58jwraNI6Pk
 YX30n+iwjzWYefCtZ317W4WNDMsK+Gc3WwQHcUrODsY/8/UvUJm+2AHxb3QwFhi0KuOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=+lTqX1zqY04UOG2hU8eaELCakseWhIQFcGcMkD+VPJE=; b=eupuJUuenV+g
 pFPRKpDf5lumneh/0NkEB8DmqGIAQm/wFZ3GmAMAXLgRH1mCZpVsuFV2BkEBBZtHdJrSCq7B0vpCq
 Hu3rf9VubgvZ5AJWGpjVcDc6fv1rdqV6cFhtzbi8sXtlX6y72sEV4BalCUYhKwl3kJZqWhyBcc05v
 wUMak=;
Received: from np150.mxout.mta3.net ([216.169.98.150])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1okhSj-00809R-Jb
 for v9fs-developer@lists.sourceforge.net;
 Tue, 18 Oct 2022 07:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=e1.nkemails.com; s=api; c=relaxed/simple; 
 t=1666079784;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version; 
 bh=+lTqX1zqY04UOG2hU8eaELCakseWhIQFcGcMkD+VPJE=;
 b=WAidyT61Mdid13rIw0d8d57wkhz66Fe0zUet8Mgo9BkpDnOPRKUN8t5D7UeFoYSKXVkIxQwuaUY
 ZmxAFpNcjMNYmPZ/1YRUSHVWY42WVaX/xLe83hI9jfmPCNWBfQOEz7sIzoy+TItPj3K9g850wsaoh
 Wj6ZF38xck8X1dNuBGo=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1666079784;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=+lTqX1zqY04UOG2hU8eaELCakseWhIQFcGcMkD+VPJE=;
 b=SSd0jsYdU8cZqXPIkG9cjdB/vqZZN4B4V0yQbF61qK7bykwOVjln9u1XVw+Djd1s52cvPmIwUNX
 /Yq5fE2ULbDXZMD64M6RJ8Isu6YOeJ4mfX2c+/lp5+AG9aMTriQlvmhvhJOwzpvicfVvg/Lbsw7Yb
 RPdMzJsfFMpW49+kCfA=
From: Lisa Yu <cnc@e1.nkemails.com>
Date: Tue, 18 Oct 2022 07:56:24 +0000
Message-Id: <4ui62fxauecd.U8Mqio-RE3C7VPOjkNSNtA2@tracking.e1.nkemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: U8Mqio-RE3C7VPOjkNSNtA2
MIME-Version: 1.0
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear manager, I am Lisa from XinBo Precision Co.,
 Ltd in China, 
 thank you for taking the time to read this email I writing for you. Since
 2011, we have been providing high-precision CNC parts machinin [...] 
 Content analysis details:   (2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nkemails.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.169.98.150 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.169.98.150 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1okhSj-00809R-Jb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] High-precision CNC parts respond quickly
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
Reply-To: Lisa Yu <lisa@cncprecision-parts.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear manager,
I am Lisa from XinBo Precision Co., Ltd in China, thank you for taking
the time to read this email I writing for you.
Since 2011, we have been providing high-precision CNC parts machining
services for some global brands, such as Canon, Sumitomo, GE, etc.;
Customers are not only satisfied with our CNC machining capabilities
but also amazed by our quick response services. HIGH PRECISION OF
0.005MM; 8 HOURS QUICK QUOTATION PROCESS; SAMPLES ARE AVAILABLE WITHIN
3-10 DAYS; it can shorten your project development time.
If you have drawings of high-precision parts that need to be machined,
welcome to send us for evaluation and quotation. thanks.
Best regards,
Lisa yu
Lisa@cncprecision-parts. cn
Xinbo Precision
Unsubscribe
[/http://tracking.e1.nkemails.com/tracking/unsubscribe?d=AyNMGcjZJxUOBOjtoRyWFfFkKLEm2XOC1Ntcgr7lH-n8thG9aqUV3cUAW6NvbhmHr4AtBRcVBSEkm0j8-ZE8PahEbsBhc2UGWDvDqnEvIdokAeK1Ic6QmX6Z9uwWbnvgOrcdiTCPBKfCLpfqCA5T5krjkCHm-PquxRspzsa8ekw3EiMkpznDyDylK0liCLlp6Jak0YqNc3gUedQMGzcQk4AIp0xAVYlBlFR5q2zUfoynDOyz40AUCmJLU1yOgktRaieK_spUA3dUBqMMazqw58l5uVlxB7i6UH6tkYq-mHvRIvh2kMEOM_JcShTkchpDf2nD2a---RDuwo3Auc42H8WxxEov72xax0GbjFiTe4DTkKJTxuxebpB9IxznWjTog5Ol1-nAP9YRIxRtFfTj3lkbhsrz9ZHOmh6z7qwCYZOX5oz7igiZ5-76bJf1eFdGjGlvbW39glNv1INdPfwFyAr7NRh4ds98x9hMIUXkfeRu-nKAsHwzOTcYxlZm2XqwKQ2]
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
