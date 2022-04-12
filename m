Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F0D4FCC25
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Apr 2022 04:07:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ne5wh-0006jn-2g; Tue, 12 Apr 2022 02:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lawfilm@webtel.shop>) id 1ne5we-0006jh-T3
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 02:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:From:To:Reply-To:Content-Type:Subject:
 Date:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P7VNB7bgP0aPo/WWesNmhDmHChajTyBbJlJFrgbdUZM=; b=iWCqeNCIvErQf71RwFcqYYDn73
 i7WdRv/V5Jpwh+2Da9XjSx1hgQNyA4XyNTUFrwT2NS/8jg+HRHLLbGVlQ977TwZw2XFvKJcUFHeeQ
 SvB9dbogzlEEX9COSoQF7xn5EeAhhDT4hWTRO12JEg+lFBA2qT87Q9BToZeTroAlN3wA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:From:To:Reply-To:Content-Type:Subject:Date:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P7VNB7bgP0aPo/WWesNmhDmHChajTyBbJlJFrgbdUZM=; b=Q
 Bikwcb0p83lLPatSg+aM/5yAORjXUmGuI0bK1DukbSJqg1QSoPPXv/DQSY2fDMJClzvE7FxBmDOnV
 sHms1mAM8fbvainCVb17EUekWhh6Vkv4qFALE3suXEpKYxWvPt2FfYJXRVBByXdIaoiFIbfO0Y9gI
 8v2P6oTrlCO2zT9k=;
Received: from mail.webtel.shop ([135.148.47.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ne5wb-0007Uc-4H
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 02:07:51 +0000
Received: from mail.webtel.shop (localhost [127.0.0.1])
 by mail.webtel.shop (Postfix) with ESMTP id 4KcpcG2VHFz9p24
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 01:51:42 +0000 (UTC)
Authentication-Results: mail.webtel.shop (amavisd-new);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=webtel.shop
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=webtel.shop; h=
 message-id:from:to:reply-to:content-type:subject:date
 :mime-version; s=dkim; t=1649728295; x=1652320296; bh=xeK9SpiSBO
 yaMekSjGI1TfANTluEfthJlOzBsmgwFNA=; b=pHoq8tq9Q5hEMubX645DHHoQhl
 XE+o7XOfw67hcwMmnjkU/RhOuywbE6NoSONM0f53JSEYYwwVDqUjmOUZUWzO/3i8
 8MbzpUr0Ws+JPDwVhvMOE+arQZ9nTjEczn89CoDkodLeT7W2W2dqqJHurAPz5jzl
 mYZFyNz1bvROuSskO2v0eMQ02KZEFWGj2IxlYbv1EtPfpd8bL7s4vab99WhmhzgW
 Kimx15Ky96Y0pMGqKe5bfwM8URnUTLjiIBkt+3ifEh8eG5IuqTIKUoTB64X6QOmL
 ERRAH0fJN+n8n3+g3dScBBxqLijaAFW86c5E1mkCCjxs1nitO/wbuJ8jJtXw==
X-Virus-Scanned: Debian amavisd-new at mail.webtel.shop
Received: from mail.webtel.shop ([127.0.0.1])
 by mail.webtel.shop (mail.webtel.shop [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GdV36pny2iJi for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 01:51:35 +0000 (UTC)
Received: from DESKTOP-2CMB3DV (unknown [41.190.14.153])
 by mail.webtel.shop (Postfix) with ESMTPSA id 4Kcpc60LHqz9p1w
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 01:51:33 +0000 (UTC)
MIME-Version: 1.0
X-Unsent: 1
Date: Mon, 11 Apr 2022 18:33:52 -0700
X-Priority: Normal
To: v9fs-developer@lists.sourceforge.net
From: "AUGUST DEBOUZY LAW FILM" <lawfilm@webtel.shop>
Message-ID: <3D3187591856085870068FB00AA2BD2E44C8D8A6@DESKTOP-2CMB3DV>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: <br /><br /><a href="http://www.hunsub.com*_*/">If you want
 to unsubscribe then click here.</a> <style id="page_style"></style> <p /><br
 />Greetings Dear <p /> <p />My name is Victor Hammer , I am a banker from
 United Kingdom, Working for&nbsp; EFG EUB ERGASIAS, London branch. My reason
 for contacting you is to seek your conse [...] 
 Content analysis details:   (1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.6 HTML_IMAGE_ONLY_12     BODY: HTML: images with 800-1200 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.3 HTML_SHORT_LINK_IMG_2  HTML is very short with a linked image
X-Headers-End: 1ne5wb-0007Uc-4H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] please can i speak with you ?
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
Reply-To: lawfilm@webtel.shop
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

<br /><br /><a href="http://www.hunsub.com*_*/">If you want to unsubscribe then click here.</a> 
<style id="page_style"></style>

<p /><br />Greetings Dear 
<p />
<p />My name is Victor Hammer , I am a banker from United Kingdom, Working for&nbsp; EFG EUB ERGASIAS, London branch. My reason for contacting you is to seek your consent to be presented as the beneficiary of a deceased customer whom you share the same last name and nationality with. 
<p /><br />Kindly send your 1. Full Name 2. Address 3 Present Country. 
<p>Best regard,<br />Victor Hammer</p><br /><br />
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
