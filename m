Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EA42A0A27
	for <lists+v9fs-developer@lfdr.de>; Fri, 30 Oct 2020 16:46:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kYWbV-0005so-HU; Fri, 30 Oct 2020 15:46:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3PDWcXxEJABs712I95CK8FD1JaRSR7D19C.3FD@trix.bounces.google.com>)
 id 1kYWbV-0005si-0D
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Oct 2020 15:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3wYxai7Ptal3fIS9Aiy0VU7JElBBaDbqcpQizFVcws=; b=KjguKsZru6xpLQmHDOxD79vflu
 bhYK2Ai4ALy77Xz/Z400w1Yp5o6oQzRg7TfCljkPtUxATLdlrY87Wvkndc+nmVEcUT8Ba3G2SQG6a
 lB1lUNUe6hVlNZf78RUsylLO52OY/RujS7/+p/MQt2Wc+iPEKZrz5ad1HgArIyXQpqQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H3wYxai7Ptal3fIS9Aiy0VU7JElBBaDbqcpQizFVcws=; b=a
 yV4BX/Ht10NDSm+OIshZfg7bmGd0+6GN08/nt2rdGz//tsJSrK/hqA8CCi3kZgyuxu+gLhiCnNEAD
 H/JQgePoy0R4hZ1Z3Bl/4uaIu4FWMjZrcLfzGbtmXeXTBD6WeRwymPp0rOKPmOSyYjjx4k5cHf5SF
 whEziFPLbqTt4YtM=;
Received: from mail-qv1-f72.google.com ([209.85.219.72])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kYWbS-00D82c-9Z
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Oct 2020 15:46:12 +0000
Received: by mail-qv1-f72.google.com with SMTP id v4so3960555qvr.19
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 30 Oct 2020 08:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=H3wYxai7Ptal3fIS9Aiy0VU7JElBBaDbqcpQizFVcws=;
 b=tchZPifplALhVEhdQjO5nz3LlVcE+1daZ2FRIrJZdea3N/dRsG6Z+PMAuQcnmKo6rB
 307HuYQRDZv+g28xMw7hLEnn3Tce87M5J1si0yZamMKM6wgwull8tlJT2Afgo98c6LuN
 eYFsj2eF3ZApphnCnWNPyPk/Y2F/Q3dj4VLv6RHlndRnreUMiUVXDG1kkr+bzIAuUtV3
 JjLjBPthYypTP+d7yWYucVkhvE5iFXM3LZNASDLaxHxBf4IEs5zEAiOqSPRcnCaHdneK
 0KkDFaUXsrJemUtgMNj1y8yCK45RapIFNia2MjA/y8RjQbBQ2i+7P1Ky6ASgGqvVaLx2
 OjfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=H3wYxai7Ptal3fIS9Aiy0VU7JElBBaDbqcpQizFVcws=;
 b=BvMr+/bOpRqPDI9NP47adJzx+vIvUHGhWUrBH94PGSQmwxX52x809gt1jCq881zhgv
 QH7m//1bOa0/y1NKIc3saNhUFG1EXglLjazb4Rf9GdHro3VJdKIW5X5q0XWrcSOdLWBV
 OHvDMVEL8wUntTtsa1LnTYaEmrx+lMZZLoIcfF17ajIjrxxScjc2BVx38zJEDQ4y7CLn
 Tt5fnqw6paqVof73DThIUem+EulbF4maeus/2z1ujmmr3dGc7hyG1qEc+GBWouinjs6g
 DZkM9No+sMiXcyWTdo7crsVLW6JFD/R5Tv3aInLQkdr586l76zmmuor/Y5sOU/+YSHvo
 h8Bw==
X-Gm-Message-State: AOAM532h8kgsq9IpE+mXRWEkkX2SFH1ZuWFyCDLRTlk9W330MXG+Ik4n
 4JE34ohVU7rT3fm/Ayp6lIrDuM+d+zwbcMDutmtX
MIME-Version: 1.0
X-Received: by 2002:a0c:f053:: with SMTP id b19mt10375409qvl.50.1604072764426; 
 Fri, 30 Oct 2020 08:46:04 -0700 (PDT)
X-No-Auto-Attachment: 1
Message-ID: <000000000000515a7805b2e54b71@google.com>
Date: Fri, 30 Oct 2020 15:46:04 +0000
From: gabrielthomas9010@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (gabrielthomas9010[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.72 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (gabrielthomas9010[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.72 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kYWbS-00D82c-9Z
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Hi,
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
Reply-To: gabrielthomas9010@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLScuNN46De4NTNDuI_3Rm2L6CNABd5Ra0TyGG6ZxgVbAw2h7Ug/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

  Hi,
Hope I am not intruding on your space here.
If you are interested in equity or loan financing,
I would be glad to assist.
We are a private financial firm that acquires well established small and  
lower
middle market businesses with predictable revenue and cash flow;
typically partnering with industry professionals
to operate them.
We also have a Capital Formation Division that assists companies at
all levels of development raise
capital through hedge funds. We charge %1 commission at the successful
closing of any deal.
Additionally, we also fund
secured as well as unsecured lines of credit and term loans.
Would that be something of interest to you and your group?
Please let me know your thoughts.
Sorry if you get this message in your spam box, poor network
connection may be responsible for such.
Best regards...... Gennadiy Medovoy.

Google Forms: Create and analyze surveys.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
