Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 699561E54BA
	for <lists+v9fs-developer@lfdr.de>; Thu, 28 May 2020 05:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4aWlWY4E2FbvmEJBkdIvM1tO9xrDdYDbvQFPp1ZlMIc=; b=De0kyosqpoFDYCT+ovHSm+s/NK
	93ERyU2I3XAEOXQQxnCdVZPnhmxDMKiG4f2hws1YI/qNQQh/GtvdqT2dBx1pC7U69jDH9iNrm4yrr
	zYuCU3y11O5ChdTNJj6ZKMLzGzaqR9dU0rBt5PI9G3e9qei57KLI4Z9P9zPVLLLQX5TQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1je9Nf-00041F-DY; Thu, 28 May 2020 03:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gringold.int@gmail.com>) id 1je9Nd-000412-Ug
 for v9fs-developer@lists.sourceforge.net; Thu, 28 May 2020 03:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RJXhAajWcgu01UhxblBi1fbbZZYL7o6n2aGwEvuaR0o=; b=IEgj8rxZUwTwoRr2U+TLWpugTp
 ix12cBm23mYx1P2FLB0esJWSRjtyQYwgjmcTf13e2q4agNvC/Uilq94DTu9TaJz9cNZZvQncSgYfP
 YvH+zTGQYMkfNLTKy3zvo+GpB85Unz2iklrHmtY1g7Q+7ifSR1wQsz1L8SAN4uAl+bfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RJXhAajWcgu01UhxblBi1fbbZZYL7o6n2aGwEvuaR0o=; b=V
 V6TzlAJj/G1Mg/aX7xI/pVZAn2z2YJfWUySnASNI/73G1psP+0S92RGG6G1qGJHId/DFVZWsrV9qs
 n+5fucXKnpRO/bGy1d5cMjAZC2hPG291UznIRFLobi6GMGom9xgJJAAs4hJRD0g1Mrt4TIoSS0bqN
 ODK69yHLzbEtV1E0=;
Received: from rdns1.delivers-solutions.com ([147.135.99.17])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1je9Nc-00126h-Ia
 for v9fs-developer@lists.sourceforge.net; Thu, 28 May 2020 03:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=info@delivers-solutions.com; 
 bh=Whasp8xLUjr+UDsFzyc2YO1FcRI=;
 b=EQrLLtHAfiFkE1KIK4DmKZDYuU5FSoRz7K4xL1APRgukUL5CGpw/K5gkmnv+uYWK0RzUh95ZdJKJ
 ala961GFFEvgKQQQg/m49LiT0hAdFzXcdFxj0u2o9eFB7f0ZPUr4Pl6rCxQjevkKTnWEgTJGv4Wo
 vgYozLZMRhZ2iab6ugk=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=nk9t8CCR/gfsMxUMWOazoNBTsgWTJv/DK+rVdcA8azENLSNfPA34vmjBPEXJ7mmYlr3DLBOX+Jj+
 b8ffAEYZ11RWw7c2WzZZ6piwGGLqJtwG9208Pn9pgfvJMe9fJLqUVc7jc3pHzysOGusdtYV4Roec
 K+yqnb9gST+60PXqH1M=;
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 28 May 2020 05:38:38 +0200
Priority: urgent
X-Priority: 1
Importance: high
Documents: Shipping Docment Notice
Message-Id: <28382020053805B5BC4AB6DD$01F112D033@OVODRKWE>
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: delivers-solutions.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (gringold.int[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.9 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1je9Nc-00126h-Ia
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Goods Specification Inquiry
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
From: Logistics Manager via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Logistics Manager <info@delivers-solutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


v9fs-developer@lists.sourceforge.net,

I'm Sequel to the inquiry i made on Alibaba, Sorry I've been silent for quiet sometime now its simply because we don't have much work then. But now we have commenced and on a bigger platform now

I actually saw the pictures on alibaba website and we seems to be interested on it because it looks unique, If you could check and advise the possible making of same specification.

http://alibaba.com/zhanc-trade_en/item10/picture231 https://$@@@oxintrade.com/Alibaba_1/?login=v9fs-developer@lists.sourceforge.net

Best regards.

Benson Xu | Business Director

LeYiDi International Medical Devices (Beijing) Co., LTD.

Add: Room 511, 5/F, No. 1 Building, No. 10 Yard, Zhuo Xiu Bei Street, Fangshan District, 102446,

Beijing, China.

Web: 

http://en.leyidi-intmed. http://en.leyidi-intmed.com/

com/

E-mail: 

gringold.int@gmail.com mailto:gringold.int@gmail.com

info@delivers-solutions.com mailto:info@delivers-solutions.com

Tel: +1 (303) 500-7386 4431; 

MOB/WeChat/WhatsApp: +1 (303) 500-7386

Skype: chocolate1746

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
