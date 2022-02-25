Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDE4C4C75
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Feb 2022 18:36:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nNeVo-0003ae-Ms; Fri, 25 Feb 2022 17:36:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nNeVm-0003aY-Nd
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Feb 2022 17:36:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0kcbK0sgDWfufIzcfjUIwlZABWDzrNVwEFFYHnk2uDA=; b=HJayW1ziyzWpDMv/16Rw7Wggwq
 M86z5hEhlwIcsR+v0W0vEz6lDUvF1u63zZbIrgVbnG5t9lOHGAw7ayFEYbjD829uEIxynYNWACYLd
 dSFePRgJM3xByx7zv3Tsku1vWZt/8hhF4I44WR+ai/OGmAotTSE7QdSNNJRZBczDm0zY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0kcbK0sgDWfufIzcfjUIwlZABWDzrNVwEFFYHnk2uDA=; b=A
 XTzfUN6pFgIL86VN5b/FPw/K5cwp3Xi2p+OHCWiAQvbakR7IZE3ESWYf0IpraF4RYoNGTee9RQbpp
 QMh8mAvjTZKRyq02hGz6DgslAVc8gkqlWJfadZKHjrNLULT4NyLQEzt2ZMOwSQYkNYns/P5VZ+3w/
 rB4Z5F73S8mDTAMs=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nNeVj-00F40B-C4
 for v9fs-developer@lists.sourceforge.net; Fri, 25 Feb 2022 17:36:09 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 l21-20020a056830239500b005afd2a7eaa2so1245583ots.9
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 25 Feb 2022 09:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=0kcbK0sgDWfufIzcfjUIwlZABWDzrNVwEFFYHnk2uDA=;
 b=hqqcct0dNVJYHJMAlzq8eY8zbzrMLed6oPRJITPEzb4ANiKMQ7xiwxKrj/oBJaGX9P
 pFttzqBbzhV7pBksQPDYnwkjQRTw9T+3pBOqdQ4wjshLGcNbB2Nq7edT1FBh0NUBbhYh
 1rPsWHDGdg+Tz+umsIGxrfxLNmyBT6KEzIG6Z4ruqO1Z/3plilTEi0H+v11Z7hdhESSj
 W8OtgljEgpPtAwpIeBjQWJ9RetOZjsWF9lAg2cU/7yslCcTUlAHcoKC2g2RzrqnpdAKC
 B6bieOU/CZdXS893nqJ4DJdekAK9HY6wuOSMSr+2497mlImpqe1DDSqM+5C3KOglmNM8
 INtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0kcbK0sgDWfufIzcfjUIwlZABWDzrNVwEFFYHnk2uDA=;
 b=gpna/ySXPC8+fexUmZDvEANTs7cxbRW8BMIM5RdBkjEqBo1c44/2f8J/UOO5px9tyx
 23KwJczhmZeKWw60oDWPqSlhcYmxiTZKdX5eSBa3jaHu4B0oecnPN+whv1GVIn+UlKwo
 l9bah53nA9qmN7l/EPb1LmvTK9mkfd5YIAcNB5yz48SHCNy1tMe83slHplxrvm5W5UeE
 UgGDwdKW7yl8A2Gpe4wzHrQk+7RAKl15J67o2VXjBFtia+IovWwJQjuckJQk+AjLxtbd
 yug044ch3l0HVT3jmSV73iz1pP70i/sQKpMSpp8rYGzk/ezgQmysHjdUo0dAeBZEmTxQ
 Jorg==
X-Gm-Message-State: AOAM532I67oHd1DynVHK/uUsGhn3g8GfqYOWZgNZYSh5CeSkvEVAUdsR
 GQdS0n2G3Zp7qgxe0SpCGXIcagwrIO3ufseIAfQpW0LDPd4=
X-Google-Smtp-Source: ABdhPJya73bXo1ViavqbBzRih6YbzZwBV5NkPFY0llLs89AQb/VLUSoziQTp6iUBf7MmwIdJXYwJhCqtn+cG/la0Eko=
X-Received: by 2002:a05:6830:342:b0:5af:186d:f947 with SMTP id
 h2-20020a056830034200b005af186df947mr3259439ote.94.1645810561686; Fri, 25 Feb
 2022 09:36:01 -0800 (PST)
MIME-Version: 1.0
From: ron minnich <rminnich@gmail.com>
Date: Fri, 25 Feb 2022 09:35:50 -0800
Message-ID: <CAP6exYLMoSENG2dthBCaMfWY1D_obLuzN+FAUOSpCsdxye4_GQ@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, 
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings. tl; dr I believe we can make 9p perform better if
 we drop the serialization of read/write, and use clunk as a "memory fence"
 operation. You, like me, may have gotten a bit tired of the "9p is slow"
 folklore. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nNeVj-00F40B-C4
Subject: [V9fs-developer] Make 9p fast
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

Greetings.

tl;dr I believe we can make 9p perform better if we drop the
serialization of read/write, and use clunk as a "memory fence"
operation.

You, like me, may have gotten a bit tired of the "9p is slow" folklore.

This lore is further accompanied by the "because 9p requires IO
serialization" claim.

I've run into both these claims in Google in the last month, and there
is even work on a replacement:
https://github.com/google/gvisor/milestone/6

I did a lot of measurement of 9p over the years. There is no
fundamental reason for it to be slow. Further, there is no
requirement, in the protocol, that IO operations be serialized.

So why do the implementations serialize IO?

This gets back 9p's origins as a universal resource sharing protocol
in Plan 9. We use 9p to read the mouse, the keyboard, and files.
Since, e.g., the mouse device in Plan 9 is also writable (no, the
mouse does not move, just its idea of its position!), there is a need
to strictly serialize operations on a fid, for proper operation. If we
read the mouse, then write the mouse, it is important not to write the
mouse, then read the mouse! So, in Plan 9, operations on a FID are
strictly serialized.

The result is that the two biggest opportunities for performance gain
-- pre-read, deferred writes -- are not available to programs using
9p.

9p is not used in Linux in the same way it is in Plan 9. There's no
reason NOT to allow these performance improving operations. I believe
that 9p could run at wire speed if we stopped serializing IO. I have
experimented with these ideas in harvey-os and they work.

Is there interest in changing v9fs in this way?

The first step, in my view, would be to implement the kind of
pre-fetching that NFS has always done (I measured that one too, a long
time ago ...) and see if it helps. The additional extension, that a
clunk serves as a sort of fence on pending operations, would need to
be done at some point -- maybe. But maybe we could just use fsync on
the client side to mean "wait for pending IOs to finish".

Thanks, even if you only respond to tell me I'm nuts, or to tell me
"Ron, we already do all this!", in which case I'll still want to know
why it's still slower than VFIO :-) or why the gvisor team is working
on LISAFS.

Ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
