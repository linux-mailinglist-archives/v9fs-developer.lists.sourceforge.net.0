Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 748892EA5C1
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Jan 2021 08:15:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kwgYV-0005jx-SP; Tue, 05 Jan 2021 07:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <36hH0Xw8JAOMRFIIFMFGIbFGGTjLRFNQ.HTR@trix.bounces.google.com>)
 id 1kwgYU-0005jl-T8
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jan 2021 07:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCTbdUKxRIMffiG6FrBZiJeEvdZURMZMdk07p0USzd4=; b=A2znUvY94GIOM3wsDk/B2BYQEp
 qujcZfxM3WoWjwhAxnsYlLer73/0EvToudcBBIWYbpkos4x1Fv1e+whLOo2pmCJGm10d38sWKtY0L
 j4rJXDsCldo9tkiXQI8EXwsqVP7yO3bbe7ORqWpwCc/DFc4KU91uyqMkOw6Wr0xpUAjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bCTbdUKxRIMffiG6FrBZiJeEvdZURMZMdk07p0USzd4=; b=j
 qzTPt+2Ls60TmPMr8zrnDHSnAnIXn7EEPsuqV9qp9yq/8b8tsSeO8CZiZHto6B6ucEFuWvuC359wu
 9X7dnhJ3GqkXTkjMY2/r3WDfWkPCrb//BBnlNDWYNWsf+4CvXTjMbX4xpawTS69XF3mnA/khXzWaj
 mBi1Lw0b+8RKKtJY=;
Received: from mail-qv1-f71.google.com ([209.85.219.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwgYS-00F4NI-Ss
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jan 2021 07:14:58 +0000
Received: by mail-qv1-f71.google.com with SMTP id m1so27099230qvp.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 04 Jan 2021 23:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=bCTbdUKxRIMffiG6FrBZiJeEvdZURMZMdk07p0USzd4=;
 b=i3+5BCd5wzALwF6+8Oi/UZoxZVB/jA+3xO/K78hNPXY3XXpXFFEyqsB9r6XDeS6+yq
 +eJtwHvx/W9m4YoCd56gfo24/Jo3fVuYgjQyqPlFvCbb6ryS0QQuRljXiQZEV4r1mr1i
 HQl7qVzIxoa//dKx6nkjQ+jq4oXTJf0kqLnssFjvfd8keeBaxhnrVXeaeND0yGso7rKe
 6FHdxAoRRxEp1ktaXS6T2hLJzWzm/I1vaOdWHY/tY9sYc5mgR33mFajpsMeuv/2rlYSX
 YleturZ//8guxQNzZaqtH2nuvBZihVW0GHN7UHDGjX678SkoxuuhLZDJLm2n8WYndxuI
 jBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=bCTbdUKxRIMffiG6FrBZiJeEvdZURMZMdk07p0USzd4=;
 b=QPDvFK7mmZDaG0PPWkQdbLqYBaC+OPr6RSrKCrMaWXgAFQ0ma2j2UIiNYmaB4Ypcwc
 94sfHknoSoPoDTNOCTgqLr+33FWaD9w0cttdge/4PI8yiYLItLxAfH8xnF4qpTVhkFjB
 ouHYYX47LpQVqg00a0YBNpB691PPPW/afkLmiuUoj9hILMwgD2c7zBykkSHVgF8ACXEm
 n6X7AG3bLT+9sjsfMvDcBHN6LfJyftOs8WlyQVG/EBEypfsEOvcoyYf/BU4NTuGmLzuI
 CWvv8hnryN8UmrQdGhfYCXCEh6EuUg8UhN5+qJON7FSFIl0AbBtneozHeMGaJjw3mx4/
 J0OA==
X-Gm-Message-State: AOAM532ub6co/kayC4rTNURuO9cTFMBQFpCCAdRo3WlD1IZJc/2zS/FP
 CJtin19HwZw3O64oIwQ1SFup+lK9W7m2AivaYYw=
MIME-Version: 1.0
X-Received: by 2002:ac8:6f77:: with SMTP id u23mt78096022qtv.118.1609830890986; 
 Mon, 04 Jan 2021 23:14:50 -0800 (PST)
X-No-Auto-Attachment: 1
Message-ID: <00000000000067ee1305b821f639@google.com>
Date: Tue, 05 Jan 2021 07:14:51 +0000
From: maddahabdwabbo4@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maddahabdwabbo4[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.71 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (maddahabdwabbo4[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.71 listed in wl.mailspike.net]
 0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image area
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
X-Headers-End: 1kwgYS-00F4NI-Ss
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] DID YOU RECEIVE MY MAIL?
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
Reply-To: maddahabdwabbo4@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I've invited you to fill out the following form:
DID YOU RECEIVE MY MAIL?

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSfhiVREbJYCetr3pqO1KzmQhUUq8t7EeXiW5M9LI9w5IugClA/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Dear,
I had sent you a mail but i don&#39;t think you received it that&#39;s why  
am writing you again.It is important you get back to me as soon as you can.
please you can contact me with this Email { abdwabbomaddahm@gmail.com }

AbdWabbo Maddah

Google Forms: Create and analyze surveys.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
