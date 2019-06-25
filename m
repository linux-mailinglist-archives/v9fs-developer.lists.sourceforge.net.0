Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7503C52590
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Jun 2019 09:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:Date:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dKUm11wFXRB/JTZPSuRK2AW+2B5gTTJzQWm/9zLtKGg=; b=QaPzVtblwp1XFkGHflQHwnC+eV
	dus07deBq2fy+21d4fPw1ulARR3EjQwjkBlKs4CLfFA1h2GieFG+o3PstzPcLW2tk2hMzSJMdv9vr
	7ZS2a+z7LWpt2kJuCzJmfbDuy0GqbXl8RGPOMvDpqWLEi9xrjJWkZ0S+TslG0zPizZjo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hfgJc-000446-VQ; Tue, 25 Jun 2019 07:56:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0102016b8da2e657-79bbdd7f-38c9-47e6-a291-172228df6aef-000000@eu-west-1.amazonses.com>)
 id 1hfgJb-00043t-UA
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jun 2019 07:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2WKgZwAywDoZghm59JyzUvTm8ViZA0LNuG+GmwV1Y1g=; b=GQazE0R0fVsTp48z4cxmsYmQoY
 mMIgphExrKGa+FogTyTV15fka+X148BVTz5QnaETO6W+rUk3YgfC2z2NtPPPWjlHnJw+SMCOLQogr
 47cxu534giLvfgO4Rfh40hQZ1+fjSSpX6QKhwZeNYYnXJSKYWdCFgrnQFYWr540uu7Ro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2WKgZwAywDoZghm59JyzUvTm8ViZA0LNuG+GmwV1Y1g=; b=B
 YKNfk6gWRa5JUrJcltLvYvZMntkLVvVPgihsJECQ74GJBp4Pmt6hXh6zpnUplnAgvuMfsUce4sVwn
 wRiL13e+ypu/nJVEc839+bo1zeM91YV+HsTu0v2Dtp2MyXlKr0IkS+NwifZ/0X2NC2j2Bs8pycydG
 AtSRs5OhIsvl996k=;
Received: from a3-6.smtp-out.eu-west-1.amazonses.com ([54.240.3.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.90_1)
 id 1hfgJi-0094dR-RH
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jun 2019 07:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=ihchhvubuqgjsxyuhssfvqohv7z3u4hn; d=amazonses.com; t=1561449391;
 h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID;
 bh=2WKgZwAywDoZghm59JyzUvTm8ViZA0LNuG+GmwV1Y1g=;
 b=T/5XelK9kiM613CV0DYnB3E3FbHxUHsDzLjhFXq/rLcK5plMuVgjOo5jjPJ5PuTJ
 K0aevug0u8d9nE/ID5beu3VvfF+id3nrWBXx/RPQ/fuddYQaAcIWVkZAw5xnsnanFGa
 t3m3JyzcCtiN2XrrakjlHJ6h6iYx6p0lYQZlItTc=
Date: Tue, 25 Jun 2019 07:56:31 +0000
To: ClintonDiomy <v9fs-developer@lists.sourceforge.net>
Message-ID: <0102016b8da2e657-79bbdd7f-38c9-47e6-a291-172228df6aef-000000@eu-west-1.amazonses.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2.6 (https://github.com/PHPMailer/PHPMailer/)
MIME-Version: 1.0
X-SES-Outgoing: 2019.06.25-54.240.3.6
Feedback-ID: 1.eu-west-1.M0gjYme6n+C8VOM6s9XahtqozhrUNhl9pdMlVJTZBkk=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.3.6 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: emenbe.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfgJi-0094dR-RH
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Enquiry Acknowledgement from emenbe.
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
From: emenbe via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: emenbe <info@goldenunicon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Enquiry Acknowledgement from emenbe.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
