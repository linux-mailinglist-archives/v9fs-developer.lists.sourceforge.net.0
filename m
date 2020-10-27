Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843C29BEE7
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Oct 2020 18:01:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kXSLG-0005Wq-Sd; Tue, 27 Oct 2020 17:01:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3OVKYXw4JAEIerhvi.vsffir75kqemp.gsq@trix.bounces.google.com>)
 id 1kXSLF-0005WS-HP
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Oct 2020 17:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b+iE2Lc8W2aiL1mhsl5Co5XnaBjXX9bYjs5D+VoXjtQ=; b=U4yh3VmjzAmq3/gwt1xueb1tx3
 0c/grN1lxhKs9zeed8rQDSaHzBw/gIkXOhviHyFM/YFVhuvBWgtzNd9C/prn6GPxgFpdME+mfHHf6
 UrT1uGmOb3EJpt6CfPI4XGCpCGVHv8kMKJ2L59gvS7fgDXOlqRllvcHr/RMFbIWTovNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b+iE2Lc8W2aiL1mhsl5Co5XnaBjXX9bYjs5D+VoXjtQ=; b=R
 3mj93rcgu383Av91ZSKPs6ehGb+5qk4AoxVjOxRc6E3t1BntCSVSscX79YgkYO3Fvu1us10/4bGJ1
 Vi3wmjiEFQv1hATIHVgauwzHTMro3ECqdUmw+aqZJTYij4a34xxlG3YEUr3+EVt/fc2Wx5m9nvCpb
 KZSjfUtfhTbJedqY=;
Received: from mail-oo1-f71.google.com ([209.85.161.71])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kXSL9-0090NQ-0x
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Oct 2020 17:01:01 +0000
Received: by mail-oo1-f71.google.com with SMTP id r25so1054240oop.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 27 Oct 2020 10:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=b+iE2Lc8W2aiL1mhsl5Co5XnaBjXX9bYjs5D+VoXjtQ=;
 b=TnHIcKBJXzQmp+W7jpw0HA0mpqnzkCBhwNgjhIqJxiaOzVozbL1WC9hPq6zblMf2Jo
 m6QVtVubvUVUPJWao/SCELCgz9pm0YZuS6kaztkmUmvJKduAeBPKiSyGff9iYLFXQNm8
 7cXRNTBph/haN9G0wlYihrZzCM6pZtJ+puM13zKgixHruWruMNS2RKHHJxvHbT1cFeIj
 lFnLHhG1ANDxsk5PjlOeg04Uyea1VW0EqNGpyMS4lrclwkNeZV/f/sriSbTzzAq1k41s
 JvPX7aIWpMucTUpXt+NX49Nzexmd0CX+dfTjvSoTQm0F49HsJaswtzERlx6EsRddl9iI
 0hdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=b+iE2Lc8W2aiL1mhsl5Co5XnaBjXX9bYjs5D+VoXjtQ=;
 b=D2yQlogaa35u02WKkBR25sYqw9E70iY31UrgTr+geEXcdmZSbDo49b+JmTb03JjllK
 E7oG7hHHyXT91X/pvMVI8VvFTMXu0E1Z66uJLCDFKmrXT6Mze+Z+SPUt4yj/LxNtseq3
 o5k5l3OmQlFP/DRoT6mB/k06CbkeIRig+TKwUxvsfrS8tqTTE8+864V85oAyZT7TYz4C
 +URmVIYvKUga7KgScFk0EAX6wZlcKL1tzqmWWVroKuAE8yc4xxMqtoUydnfWI9k+VRqY
 6Vufxuo4K9wNqZcl8SOKHj1SrVi/vEZeHP72rk1/n77s7CcPF7JCYzqUYOmWkqbPSVCz
 s4Gw==
X-Gm-Message-State: AOAM533GY8Iwp96i99PEduBLkv3AORVUklRbP0wlQnLYGOaSlyYxoeGP
 2yINqFJ0boUXBDP3mdjfnq484drRf/cmQEkeLFiF
MIME-Version: 1.0
X-Received: by 2002:a9d:64c7:: with SMTP id n7mt1836880otl.137.1603818041879; 
 Tue, 27 Oct 2020 10:00:41 -0700 (PDT)
X-No-Auto-Attachment: 1
Message-ID: <000000000000abbf6105b2a9fca6@google.com>
Date: Tue, 27 Oct 2020 17:00:42 +0000
From: andre.robben31@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jeuneafrique.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.71 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andre.robben31[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (andre.robben31[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 2.7 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
X-Headers-End: 1kXSL9-0090NQ-0x
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Urgent Email From Miss Nidal Aoussa.
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
Reply-To: andre.robben31@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLScnnqUbe80NudxcKfpO799mXD7R8ZqpFP9n6wyTr5-YzOHt6Q/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

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
