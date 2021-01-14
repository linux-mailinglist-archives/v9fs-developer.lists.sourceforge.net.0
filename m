Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 174292F6E7E
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Jan 2021 23:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jfyDlf5We+OBQqsO4YcpposQ9c666tzMzxVRdXXd+pc=; b=MPFZzn9e7ASBM/2IcoAE4MbB62
	FWYt6uYY5gYsEENktSLQS5bQcX0SShsK7aNfQBVJkrt+qlGuBpe88g/R2Uk6ghINJalTRzzPDm+s2
	Iyez3dEanIFfX5S/oCYN02e8ZIwTXCKnAZdKDifrqxw2oadcFuwNheJRvPAPiK3B2Hk4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l0BOX-0003oK-C0; Thu, 14 Jan 2021 22:47:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <no-reply@yunhios.com>) id 1l0BOV-0003o6-Uu
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 22:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cuV0oQ8azbWUSfn6AV/nTj10Y9kVOUBQWdfPWPkuNIc=; b=SZcxuB7tfjGusedD22MsGWMbLT
 69P0de4gttOm9TJF1+UX2teI45eqVl3M8EIfmLem9Pa7x7BZzWtfYZRqp/22U7Fhrgd1DAgI+fGV4
 OVOtXTTkR0Sk2xiTisNaA7MyTAAaodkex2i4+HNizaP1LII+SVrW0D3OAo5V0rZkT4Qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cuV0oQ8azbWUSfn6AV/nTj10Y9kVOUBQWdfPWPkuNIc=; b=P
 TOLHii6A2mzpD/aRcd2gup6VAPAY876wiY3I8jNqPp1n9IZNX66+3JDIyIV4tMAumEdTC6luyy24g
 4J97ZrQ9j+8pLowcIzxm5ZwlvcKEFRNZcqkFhxV5QKNdIQ+li7+ePipsZkZE3ihPjr3hGerHRnUks
 RN1eAU01aexO19Ok=;
Received: from [180.76.196.5] (helo=mail.yunhios.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0BOR-000sKX-Ob
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jan 2021 22:47:07 +0000
Received: from airnetce.xyz (unknown [111.229.82.84])
 by mail.yunhios.com (Postfix) with ESMTPA id E54E963903
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 15 Jan 2021 06:29:46 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.yunhios.com E54E963903
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yunhios.com;
 s=default; t=1610663387;
 bh=HSgncgzRY8I0VlCqNVhJ8z2aZf3lK8cPjdQpGvkURy4=;
 h=From:To:Subject:Date:From;
 b=XqBRaFqBJQvUsouQ/AitC6Fsf+LCfwyIEAnpN/Kl/uP11uvwlxT6eAuVxXsgL7b4t
 mqiiMDVSHNbUhM/bzGNLhThrHU4EhoAD3LRypyrSH7K6MA1Tns1M+I9Zgi7tn9t26R
 k57XjzZdm5xTGUxkpfYlwnReN9C4Ah+4IM/7MIJ8=
Message-ID: <1B886A01365A85408DA4B03506D4FC8E@airnetce.xyz>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 15 Jan 2021 06:29:39 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Iywgh 8
X-Spam-Score: 5.7 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 154.85.56.76]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.8 HTML_IMAGE_ONLY_08     BODY: HTML: images with 400-800 bytes of words
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1l0BOR-000sKX-Ob
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5pyA6auY55m+5LiH5aSH55So6YeR6aKd5bqm?=
	=?utf-8?q?----IjAnVFZz?=
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
From: newsletter via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: newsletter <no-reply@yunhios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net




If you want to unsubscribe , click here 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
