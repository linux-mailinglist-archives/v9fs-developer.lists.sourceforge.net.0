Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 443AB98FB83
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Oct 2024 02:29:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1swWBw-0003sS-Q6;
	Fri, 04 Oct 2024 00:29:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <helinaerinao36@gmail.com>) id 1swWBf-0003r4-RE
 for v9fs-developer@lists.sourceforge.net;
 Fri, 04 Oct 2024 00:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 Message-ID:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=; b=aH43giD6P9yNvQ1zwuXCwphr1A
 Y7hF9Z7VYqyzFibzxMTbTnwzL7FgU2+Uese4MrNfq8M58Wdk88WQIRHouyTQ34V7wMRpcH1TViDBP
 BemyahHbQRBmieIfs0VHl76J8IOBbRml3RQ1nODlCIRX/co/Lb445GAz1fC6iKfnMqGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:Message-ID:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=; b=Z
 kaYzaZa9FSSqIRObvS9k6TGeJdFLSe0z90nho/mgbQXJ1WSXxq4/QJgoJpbs4qY5yei8//kD1+APF
 mAI2W7T6GfkhGVTGW5Ek5coJ285QdK18mx8wbqCKdUTz1l0KXD+1tqAW7fGu4GFzUcEkvBFMWYeFW
 yYQLQRXvUZzGTTf0=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1swWBf-0008GG-AH for v9fs-developer@lists.sourceforge.net;
 Fri, 04 Oct 2024 00:28:51 +0000
Received: by mail-pl1-f194.google.com with SMTP id
 d9443c01a7336-20b90ab6c19so17131655ad.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 03 Oct 2024 17:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728001725; x=1728606525; darn=lists.sourceforge.net;
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=;
 b=IicZ7anxV5GFygFQ0UYSMixDtdB4Uno3VnV/p4rqtNHeqJ2kBBWwqkYscJfJWb5iUZ
 Nazr0s/n9HufZHXysMk91rW+I1btCqZGC6EmSM1ILDNzRY1dial2YRpWT98xoRiCAtqX
 xANCM/BXBW6ht0uX+pf2rD/MNNwPiIdyPE0E93W8uREy4o1D8JTZWBPFTzDAFuT5RSWi
 jAddz+vC2ndwLb3G1iPMa4eUD4CzNgjmdw1isg8RmEeud8eVxpUXfrKHzNlCe999hxos
 MBjc9mp26RG+Qyw+Vjwy2Wlo25wePaRDeOd9YkVB2QkMUE54iX1laL3gbPvNEl2m0CzH
 66fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728001725; x=1728606525;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=;
 b=wcDu8oLgwyQnpQelcTV+1ZLrAcBrpAHS0dkZqJBX1p2cG+Qf/Z5YySxhZGBV17HzzS
 p1H09Z9f4w8S3Lu3Bx/l55ByCB4eGsEo/MABTSlKlAk4dctOejbcebrJ2LpquniICNwX
 0dI5bBxwYgNTyrx5yrlZpka56gfc8LuUvHmpVMIIfmx459fMTQi2YcrM19VBWvN0KI+y
 MXaRhCvjLAGBbBU8t0fxC223aRr+vieQZs6cEYNfGIcCdjg89LE4Dv1Xh3MxObO7LflI
 V5skJ2Jdnk0GOG83yGPOWuZmLSdzgVqCHzG8MUwPW5uJqswSPBPkRd0uyEvjCCjuHbHl
 sdMA==
X-Gm-Message-State: AOJu0Yx3MMViB0FxFtIjL49RcMNiDUC/yep1MYi+KSnobBsHEvISDC+U
 i5abNi8Eu3olAMYoWkqX4su9AT6+HvC42O3WmxEAEGcMLlDKIzD9EmQNBVbh
X-Google-Smtp-Source: AGHT+IH253iHpsQ+/XePySygm+4K7GsM7RUw5QaEe+/ZojapssEcLdyecNnl5/0JvJTLERIyxVHvYQ==
X-Received: by 2002:a17:903:32cd:b0:20b:8341:d531 with SMTP id
 d9443c01a7336-20bfde659d3mr14302245ad.4.1728001725235; 
 Thu, 03 Oct 2024 17:28:45 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20bef7074ddsm14315325ad.243.2024.10.03.17.28.44
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2024 17:28:44 -0700 (PDT)
From: "Doris M. Support" <helinaerinao36@gmail.com>
X-Google-Original-From: "Doris M. Support" <helpdesk@sourcemedia.com>
Message-ID: <ec559f140055bfe2d4a3f2cad7261eb5aa9f7d6ec0bffb513fd963b0fe0215a0@mx.google.com>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 03 Oct 2024 20:28:43 -0400
MIME-Version: 1.0
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I'm giving out my late husband's Yamaha Baby Grand
 Piano to any passionate instrument lover, kindly let me know if you will be
 interested or have someone who will. Thanks, Doris. 
 Content analysis details:   (3.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [helinaerinao36[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [dorisjmiller80[at]outlook.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [helinaerinao36[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.5 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1swWBf-0008GG-AH
Subject: [V9fs-developer] Oct 03 2024
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
Reply-To: dorisjmiller80@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,
I'm giving out my late husband's Yamaha Baby Grand Piano to any passionate instrument lover, kindly let me know if you will be interested or have someone who will.

Thanks,

Doris.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
