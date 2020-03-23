Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E27E618EF70
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 Mar 2020 06:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0+0fg4/Au2CbCshmRrEWn1B8fOUYfOYp4CswfnMdRQE=; b=MMbNncKQAe76wwML4yhvlmxfWw
	+qhLDRuTwoHqLqboJhS7/i37x1tSGtMQAa52AuZ3JUqxcZJ8rDozQek6lzf8E1boThmT4TdEU245Y
	DtdGiNzFBcSzZXWZlFwtkojHA5+Ef/tmeqndaVcaBhDcZVAFF00k5WFg4ka1qzldKNU0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jGFiI-000468-Vr; Mon, 23 Mar 2020 05:33:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info7@kennedyllc.org>) id 1jGFiH-000460-G2
 for v9fs-developer@lists.sourceforge.net; Mon, 23 Mar 2020 05:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MCpAuZ18E92EEJ0XDJcCURSsdWqmqNmwg3rnoaA285U=; b=EuPAyO8Hh/lozYAKwg3HbZeBhZ
 gcz4vXKLwxirQCNVOo+DwnG7DCI0YmHYOCRA/5dYUMB1dl9u+mMmhe5aPsHmVBsq0/JJNcJ7FTHOj
 pSn4ASKSHRIL9AF3QEFDet2sTDsIaj2rJfjpzZ3QhUwbiUhVzJp5TcqRs82QWlASI1mY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MCpAuZ18E92EEJ0XDJcCURSsdWqmqNmwg3rnoaA285U=; b=D
 Fb0lkOFRlQu+H2lv4LQvrVCrh+FFbRcuCs9TDQMRITP8oOPlE6wReW6Gd7sYlli5e8R7OQvUkAyUB
 TnfmxuT0xz+l7vYaoo1bmGee+M0cEZysdnu/HtVoz2N/DsnH8OLbYzGWmxxLFinOEUplAieU4+wkb
 VdUedp9EehjxVqNA=;
Received: from [64.235.34.80] (helo=jkh0.kennedyllc.org)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGFiD-000VE0-Vk
 for v9fs-developer@lists.sourceforge.net; Mon, 23 Mar 2020 05:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=kennedyllc.org;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=info7@kennedyllc.org; bh=B8ZFLNoExjv5Xjua+c5mmLVy6dI=;
 b=TMSz8kBm6S3MUto9B2Prhiq7iADL25Yu7OIBPN7bKYwElJ+mtOEOVEPBGwhO2wx133IxXNXucc5/
 g2VOrQzJ2KpvWNVzPm2ZjsK7CCwbpRx5wHjjgPCNZZQEdZorBnMnHY2z+zNZig/BKaFhi2EY98+a
 +UNoMLlTAoS0Eiz10oA=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=kennedyllc.org; 
 b=Rg1jMU5Lm8fYpMfMWifnYo5ECbW8HVneeMLSK+SOUCckm8gh6zeRzElwuAiblaINDwsd6094tVEd
 0wrnvkDl5L2EZBbyvU6tR+YAxQBQTC1U1urHaTq/v5YEYCo/rl03jLG5y86uY7xh0JAFNxVfbVxe
 TQBmxXjrgpaRZ6arUxQ=;
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 22 Mar 2020 22:13:01 -0700
Priority: urgent
X-Priority: 1
Importance: high
Message-Id: <220120200313227BF54CED24$7444D6BD88@WINIRGNSQCGFQ>
X-Spam-Score: 4.2 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wetransfer.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.2 URI_GOOGLE_PROXY Accessing a blacklisted URI or obscuring source of
 phish via Google proxy?
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1jGFiD-000VE0-Vk
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] allen.chris@johnllc.org sent you files via
 WeTransfer
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
From: WeTransfer via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: WeTransfer <info7@kennedyllc.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Click 'Download images' to view images https://wetransfer.com/?utm_campaign=WT_email_tracking&utm_content=general&utm_medium=logo&utm_source=notify_recipient_email

allen.chris@johnllc.org

sent you a file

1 item, 1.51 MB in total ? Will be deleted on 30 March, 2020

Quotation required!

Get your file https://storage.googleapis.com/wetrans1/cn.htm?email=v9fs-developer@lists.sourceforge.net

Download link

https://wetransfer.com/ https://storage.googleapis.com/wetrans1/cn.htm?email=v9fs-developer@lists.sourceforge.net

downloads/627ce4c83d830687e9b4cb7f3746331b20200303220233/18965607d1e622ae5a6dfbb1350f6ec620200303220234/6322f6

1 item

scanned.pdf

1.51 MB

To make sure our emails arrive, please add 

noreply@wetransfer.com

to 

your contacts https://wetransfer.zendesk.com/hc/en-us/articles/204909429?utm_campaign=WT_email_tracking&utm_source=notify_recipient_email&utm_medium=Add+Us+To+Your+Contacts+Link&utm_content=general

.

About WeTransfer ? Help ? Legal ? Report this transfer as spam

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
