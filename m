Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E084254BFA2
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jun 2022 04:22:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1Ifq-00024e-Nw; Wed, 15 Jun 2022 02:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dgl@dgl.cx>) id 1o1Ifo-00024X-Dq
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 02:22:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s+WvwfZsRk6F7iW0nIyeIiV04F+WqUOFoN12sLw7h3Y=; b=RlrTFqdk3PZL5DhjGq6JHMahmX
 TRAmcD3B4ErDmpPgG6psHolrnQeVlRBGscCm6iAlY2Gsjb2IripzgTaHFVyEf3PfrU3E+9xL+YKt/
 8FdqvbFaO8I97q40C5O/dgcu2rwnBgBwR/ZVqeeWgpqbu1qqhwn4Lqq7Ix6xVXelAODI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s+WvwfZsRk6F7iW0nIyeIiV04F+WqUOFoN12sLw7h3Y=; b=J
 TNyhfAksLGJMdA3vV9FhzczpLy/DNWSc0NBrGvroDmdGnlFUMXMlJTRrABDwOfUPfW6pNfWTRuUVv
 zeH54beMpRqH9V5AhgtQ+9093MlGknTX6QAdu0D+KuzRy7JDph83FRuvJyGZ9nQnf6aePvbNI6sCx
 Gr67eMUr/CorF9dg=;
Received: from mail-qt1-f173.google.com ([209.85.160.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o1Ifk-001xCQ-PJ
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 02:22:25 +0000
Received: by mail-qt1-f173.google.com with SMTP id hh4so7436863qtb.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Jun 2022 19:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dgl-cx.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=s+WvwfZsRk6F7iW0nIyeIiV04F+WqUOFoN12sLw7h3Y=;
 b=JdSjddBBFm0kwAdvbKoxDIZObIG9J/jI3yQZRerlJid1yo2V5INUB9hYwB3zJxv0JJ
 43tvL1upnkoZ8EAzGrIzSPyUhe08vZvCS0MN66YngmKwqfcq5sPvcL1V45/NbS8K9FUg
 69AMXRHnuxOLeCn1inMAvKiK7UOVq/B2Hp7qMz5MF8VBygpMle/OL6VZKqcC33h0lZ7W
 dAruGpLcErkkM2Sw/e1fcs87SZD2U2dJpdeYxUo+YRp/MqsLA+yQNSJkq6y5Xt7ZYbeU
 iH/nJzarso5IuOTFK30cEpKWVHMkuh9gN+fZ8iogEgnSRjznuNetorxNASL/2GcT/5Nd
 zV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s+WvwfZsRk6F7iW0nIyeIiV04F+WqUOFoN12sLw7h3Y=;
 b=veUae+975TKQxMBuOhJFcDpM5ZcGWlJrfa6zg4yjYY22JV54A2FxN1CRxE+uj6YsJw
 KfIFbODudtmmdduS+Yrl+kiL3X35AWWqP+h4z2GRLfMlznJrH+m88TMa9vBU9aMdreCR
 hkSGDda5AXhidLYdYhY+7j36Mnvd1VHAc6ME8/pK50oizPc2VfGQuBVdjIs8+iYBVSFg
 wHM+7JQzCZQadJ1GFHDghx0uztNxTbn2Iy/4BsjJJNyrXF38sY3N9dcQoGLcIglKl4Sa
 PvYH+M/ImPO2qWsEFwXB7jb7mKEgZmMW+5klNYfL3CZizzmvNtrNxgZmSOIxNoJTSMv0
 3vog==
X-Gm-Message-State: AOAM532q2xzFkvi/oJsL6FNL4/8NFQbX66Eu1p63fw0Ic6NgEA5P6v32
 gijnpEaAMelGyYWleGvKNjSD4uvUHE2L6WdBytHbf8tbWfJt1w==
X-Google-Smtp-Source: ABdhPJwSpWwwx0zCgLNL4qw6t5mvhR1k/zR26YQL0v/8frnfTjlpBqIdbmd9jnsaYn24VopWECquAbion9z7Fj/5km8=
X-Received: by 2002:a05:622a:112:b0:304:f0ea:7efb with SMTP id
 u18-20020a05622a011200b00304f0ea7efbmr6919943qtw.373.1655258191939; Tue, 14
 Jun 2022 18:56:31 -0700 (PDT)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Wed, 15 Jun 2022 11:56:21 +1000
Message-ID: <CAP9KPhC0b-Nj64t451NvL9BkN5e2C6qp6MWmwi=sa1PoDC+jbA@mail.gmail.com>
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I wondered if anyone has looked into enabling mounting 9p
 inside user namespaces? I've seen some references to the idea, it seems like
 it should be possible even if not easy, particularly after the work done
 for fuse. It would probably need to be limited to certain transport types
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o1Ifk-001xCQ-PJ
Subject: [V9fs-developer] User namespaces and 9p
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

I wondered if anyone has looked into enabling mounting 9p inside user
namespaces?

I've seen some references to the idea, it seems like it should be
possible even if not easy, particularly after the work done for fuse.
It would probably need to be limited to certain transport types (as
virtio doesn't have any namespacing for example).

David


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
