Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 934A429F237
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Oct 2020 17:51:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kYB9S-0001qJ-K1; Thu, 29 Oct 2020 16:51:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3EfOaXxIJAGYJEFMIRRI.XEKVSgeflKQEMP.GSQ@trix.bounces.google.com>)
 id 1kYB9R-0001qB-A6
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Oct 2020 16:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uxAkD2WwHbzs9Fmj3wsflWSToRpU+kXrpyQjSY39aPI=; b=Llj694jCAhiPZDJwX92jmH1lZG
 wnMc1fssM7OAQ/MhgxdKMVkCY4gaWDz81w+5wLkkNQIWMR8CopBTwW6PdkjF4DSL3pO+xEYSK4CLT
 nu+B9Jpcf4iMqY5MOZzBkMzud7pVIAhPUNqAtyVstCWt4lwWy4aG/Aw95xuqKg/fqs70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uxAkD2WwHbzs9Fmj3wsflWSToRpU+kXrpyQjSY39aPI=; b=R
 uRQXSuhLa9qbO7SpGHABSUVr+gAh2n5OlhVbda49whgzT9jaaU9YZTSHsVmPGKBXuAnxzRXG2eUvx
 bGOhsokw3eQEwdRnwlrJL2GzFFHE+e8vxaw5lZoWZjsZI/g2ObNFX9a2usKnNhbkXu9o40mtgzN3P
 QCCAQjP96dKlodp4=;
Received: from mail-qv1-f72.google.com ([209.85.219.72])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kYB9D-00BnKQ-Gx
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Oct 2020 16:51:49 +0000
Received: by mail-qv1-f72.google.com with SMTP id l16so1000908qvt.17
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 29 Oct 2020 09:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=uxAkD2WwHbzs9Fmj3wsflWSToRpU+kXrpyQjSY39aPI=;
 b=pbb9OMRAkfB9i2Kmk2eWCX93JAR20F8KkT2mKPQ8hXbsm3PIJJaSzm5/3ipnQFQyCo
 W+VeA/pKBMjlM8uMufUbMFGq1mj2YgwV8Y9xFpgQyc2lEsxKM5PU4FJHqiTEpmIbp/VE
 cGrcKhSWbykvkgQ7M2yZjSBBCCWd9+RUZMbgEhJX2Ytq+FmaRHKbF/eVDKWdShiDQGoc
 k3KaG7rlm5XB79bd843oBanWK1NtwXn7cIfYi51IUme6K61r6RoGupiS8e8fwNXtfkYx
 Xl3fJ8gnO0l/Qz8Lu2QdVRAWYyHx9M+fDAI3V4tC0PBifjDPxxrXl3lttLEBwedWzyPd
 pHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=uxAkD2WwHbzs9Fmj3wsflWSToRpU+kXrpyQjSY39aPI=;
 b=TT1J4l1z0HZIz7/gXJSv10DBfjdnEmXosNT8nxEdqdx7gxRQgNFlkGwrE+p53DGUo8
 eKuKhSKeM5tCqEeEGfAirmd8ilsjIdpV5nkAJPwSmst5PWhz1diTh0EdU+PqNaFp3TdT
 w5mDbbdq8VkQL4ZvA7GpCnEpMXkm9+PYVF8vwdOlkVA5jS5t2XCnALWY9i4Rdp+jGtZA
 Wv8WwILzOiwYpGmgftVEFHDF4pR1nukiSCLqNkec1fwRYs4YEFOzTLuDPuP4wMcTKirG
 9wEwf3883V7MoknwhB91cwAS7fz93QUanlv/FwVj012g0TRfQz/kqHp4yTf2YPruj7J7
 3XWA==
X-Gm-Message-State: AOAM532BIfy92J5OnJZ2OyE+SSnkSWD/MAbRXpMCJE2EAXkpKWwuqDgl
 KXDzoLgpKI+wXPvXfqhsAMMtq8t22ARCDjP6amJC
MIME-Version: 1.0
X-Received: by 2002:a05:6214:125:: with SMTP id w5mt4935498qvs.3.1603990289582; 
 Thu, 29 Oct 2020 09:51:29 -0700 (PDT)
X-No-Auto-Attachment: 1
Message-ID: <0000000000006f181705b2d21761@google.com>
Date: Thu, 29 Oct 2020 16:51:29 +0000
From: fabienne.tagro2017@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fabienne.tagro2017[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jeuneafrique.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.72 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (fabienne.tagro2017[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 1.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
X-Headers-End: 1kYB9D-00BnKQ-Gx
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Could you help me in this transaction?
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
Reply-To: fabienne.tagro2017@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSe1wBhXSQ5Skw4YywgnRWiOLeNuYO0dbmnMnsDvN4YAMDRi3A/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Hello Dear,

I am very sorry that my letter may come as a surprise to you since we have  
never met each other before. I am Miss Nidal Aoussa. I am the only daughter  
of Cheikh Ag Aoussa, the President of (HCUA) in Mali who was assasinated on  
the octobre 2016.

https://www.jeuneafrique.com/365432/politique/mali-sait-on-mort-de-cheikh-ag-aoussa/
https://fr.wikipedia.org/wiki/Cheikh_Ag_Aoussa

I have a business transaction which i solicit your help. It is all about a  
fund to be transferred in your country for urgent investment on important  
projects. I want you to guide me and invest this money in your country.  
This fund amount to Eleven Millions Five Hundred Thousand United States  
dollars which i inherited from my late dad.. If you are capable of handling  
or participate in this transaction, kindly respond quickly through my  
private emails to enable me give you more details about this fund and how  
this project shall be carried out. I will accord you 20% of the total fund  
for your kind assistance. Respond through this my private emails addresses  
below.

Miss Nidal Aoussa
Email: ( nidal.kong1998@gmail.com )

Google Forms: Create and analyze surveys.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
