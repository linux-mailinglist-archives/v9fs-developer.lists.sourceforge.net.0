Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0958F69CC1D
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Feb 2023 14:34:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pU6J2-0005NL-P7;
	Mon, 20 Feb 2023 13:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eyyalgabay@gmail.com>) id 1pU6J1-0005NF-Jw
 for v9fs-developer@lists.sourceforge.net;
 Mon, 20 Feb 2023 13:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HQtwHYk8HXGh7NmnxyceWwugJfWnTzkq4TgRa9Goh6Q=; b=aaxhWbp2dTgiNsJfA1iuf/qLI0
 K0N9qj79AMY1E4zidAFUTEsTUk4Gw+GSQYgQL3eG8E1poc3oUSpJKTA/t/3UasLGQJRRYyHzQpKkU
 QCgRjSpcxmUHCtZV+SlOQqIQbrwieiR9FaghUcOQivFHR8PutKN1C6fFwEcZRP0GeaOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HQtwHYk8HXGh7NmnxyceWwugJfWnTzkq4TgRa9Goh6Q=; b=a
 teW4aYR/qv6EvGDREv+2Kl68uIv/a6lxYPkFhXXAQo0IiUJNgSvlmvGG9GvQ0jK/KW2KdsRsaGiyr
 HDeneUoGJcNMsC6J0w1EbgKhkt6WRTIV9Ik8RcY2/vg+YWfvDPaFB911+bQ5iQTlVFAf+UgiymZjJ
 pyO1lliEk7EtUZkI=;
Received: from mail-io1-f46.google.com ([209.85.166.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pU6Iw-00BIFe-Bo for v9fs-developer@lists.sourceforge.net;
 Mon, 20 Feb 2023 13:34:10 +0000
Received: by mail-io1-f46.google.com with SMTP id d12so592975ioe.10
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 20 Feb 2023 05:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=HQtwHYk8HXGh7NmnxyceWwugJfWnTzkq4TgRa9Goh6Q=;
 b=odnoNpg6kfdwYzms6weJ1RyZNSharuvk1DKvrJlLqbFDTweVkGF25W+TLjqHg6DB2n
 cIGK7lJPomSJjgD7FdV+p/CwUSrsEiIXTnsVLGm0hOyvpJyZ8iJriYXpkFdL5bkqBDm0
 Q1zgYohRqakBG4CAteyjuNsUqUHjqBiBUh0qIpx8xWaqWa9hJv2Hi1cxBmnoai6vLYWG
 cmoG1xN50RSf8YEeakanIHMEx7WRI/sAKJ9joehAU8T1qcSMmvJXbQFwiMw0Bt/vH9/F
 RByAYg6Yj8P6wAzqcojH7M2lTW36OktOtRyu2ecOCGP4OwNyfmjGl7JZ5SisPQcir3+a
 i+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HQtwHYk8HXGh7NmnxyceWwugJfWnTzkq4TgRa9Goh6Q=;
 b=xVyA9EfaJBaUgwGVjM82XrMerh1kJywfagYY+A55aTVBcUsD0cih2HiUrkPPZ+na65
 ENr62I4tHI7WSGKuPcO4B1/aEBv0lWIrSv+bGfEHBHeN0bYcex7CVFIIAOZ8huX7Yst4
 7d9oRsAyegQSzvv+jBZ98zGl/Oxr0zJAShELjaqwqHiiOlQHeXuZfsvAAm+5AXK0s08r
 7+bjgkWXenm16UCsjX3EgCruLMTt2AHzw2eWGxStt0kvwTuQqWE8WMNpgJgmyx3Zc6Vk
 z+kIJCUpFL5xHwXQEc3Q2OyuQqQpNMHxD71OvFUUvd2HGXfZS2GkjKA2G03gB/od56uF
 09Yw==
X-Gm-Message-State: AO0yUKVI6pJdq0AVM2lnxpENcVFE6FCV7FkL9Sv54XTCJvQtYh8cno55
 Sn+zy07gmjCtGt2ELdgQhxa9JNdsZH9txuuaTv+A56BH
X-Google-Smtp-Source: AK7set/J1TcB9utR7+/0tn2gTF69cCu4WXw+wVoOAXpdluXILn+owh8ek6ytsKCsqy/7vuPKPdpts8oiQlblLy/7Btg=
X-Received: by 2002:a05:6e02:2218:b0:30f:4ee:3d93 with SMTP id
 j24-20020a056e02221800b0030f04ee3d93mr59484ilf.1.1676900040740; Mon, 20 Feb
 2023 05:34:00 -0800 (PST)
MIME-Version: 1.0
From: "Eyal hameleh\\u0000" <eyyalgabay@gmail.com>
Date: Mon, 20 Feb 2023 15:33:49 +0000
Message-ID: <CAHy1N=dERhBfcRLO_=HTx95hLbMGsrTAwGLVB_0iaGzkmUCX_Q@mail.gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org, 
 linux_oss@crudebyte.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: hi my name is eyal and i have something i want to add to the
 kernel i use linux a lot of time for hacking and programming a lot of times
 i need to create files that i dont want to stay in my pc because of security
 or storage reasons. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.46 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eyyalgabay[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.46 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pU6Iw-00BIFe-Bo
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] i have somthing i want to add to the kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

hi my name is eyal and i have something i want to add to the kernel

i use linux a lot of time for hacking and programming

a lot of times i need to create files that i dont want to stay in my pc
because of security or storage reasons.

i am looking for a place in linux that i can work on fast and without
creating it every time.

linux created "/tmp" for it, however when i work i need to do things fast
and when all the programs use the "/tmp" folder, there are a lot of files
in tmp and when i do commands such as "ls" to find a file that i created, i
have a lot of files and it take time to find my stuff in tmp. i also dont
want to get an error for creating file that already exist because of
another program.

so what i used to do is to create a folder names "now" in "/tmp" every time
i needed a place to work

nowdays i have a python code that create me a folder in "/tmp" every time
the computer turn on
import os

os.system("mkdir /tmp/now")

i want to add above code (in c) to linux kernel

do you think its a good idea and more people had the same issue as me?

it is the first time can u explain how can i send you the code after i
change the linux kernel?

ty eyal :)

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
