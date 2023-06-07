Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF4C7268A4
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Jun 2023 20:26:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q6xrp-0004Yy-6f;
	Wed, 07 Jun 2023 18:26:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chilversc@gmail.com>) id 1q6xrn-0004Ym-NQ
 for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Jun 2023 18:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wODPx4uHZJHUTcdDegTDGQs4CeriK253kkjDqRsBvLs=; b=S3r9m8EJzJbpDebAA/ooQKdbOg
 f9htg8qXwSNcZXDjG3aNjUTYhxOopG0aCMy4ISvL+rLAoItBVvcYmigb20wJuBgYVZeM7u4+pDNdP
 N8fH2gY2ZNC2fekBsLYcMM91RrtcYjzJh5MOzKOb8SevX8nfs0ZTVL1sPkK/I8fSEfQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wODPx4uHZJHUTcdDegTDGQs4CeriK253kkjDqRsBvLs=; b=gG50gLT+t6DPH7Fh8SzVXjS7VG
 0Ybdd5PflpJu5sOIc77a+1al2+B3bq34b6Dvk0F1s8DCVzEh+JhP6DXjUlREM4LwnCHq6hIoTl7Sv
 zdWfUJWC8TEYBFnzEWtgP4ROn8LGFVZ2YqBx3NvrXn22bqzoQ1VY/C/S5Xzi4k5sSKD8=;
Received: from mail-ej1-f41.google.com ([209.85.218.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q6xrl-0001GV-UD for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Jun 2023 18:26:43 +0000
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-97458c97333so1044878666b.2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 07 Jun 2023 11:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686162395; x=1688754395;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wODPx4uHZJHUTcdDegTDGQs4CeriK253kkjDqRsBvLs=;
 b=PgvSlIT79OUd63jjASsNr92npBtidqBIIcr0/yPjJPwrQ/113jrShII9sGfjwbYNb3
 bf1Erx4stn1BnaSvp0QRn3qhoAelcgpWg10/cZdcHU39eWCQ1zmmvFhsHckWl6Mpelo8
 UrQi0n95qJH0NgcaprsRqK9EsuGGixeScoDOcZNRWhXrxGCKSJJrifQbQDpJ/NbpAVeB
 jnMpK7MSMrzR6/c7dXnHLdH4Ep23xmPbYZOWN/75YGet+B2gqilLbPZb2Wn5na98SVuI
 dVofyri9mYj/d28wmhB/SlSfcRQFKI3N6FrMTeZxK3M2g2XCX1xe1Rxen17YsRLYapOG
 aV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686162395; x=1688754395;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wODPx4uHZJHUTcdDegTDGQs4CeriK253kkjDqRsBvLs=;
 b=iLYj+5Ha1AFnk+AOKYRP259lJN2hekuFaMz3k+uzG1VjJ7eyMpXpkSB425TwIIRLBk
 spa4LyLs04MkB94GwyxxN0TGM2FrjnmOTEjfso9Qh0/9Akzm46bFubhdy+1w/mTAfO/Q
 vLMkNGL0W991kGbDF9wwxxnSgBB+Udapf6e+j28k4DqB/Ny2OQfnr2phFnCF0bSbP1hH
 H7uhwFnFBX9hjCEhrYS07VTEJ5BDmNR9QQfEO6AA0TH/5PS78GMwB0gKSkAevC/QAuTI
 X7yfF+jGGyT323XU1Oj9oJAKt313/5F4PVFHUHz4usNz34r84Ewhalkt6jbyhfsezbHU
 fdcg==
X-Gm-Message-State: AC+VfDyUOTdoRIuQliNakCPtcYtME2UpAjEUfhTn1f0byxDIXxJ8RjEU
 OqheD4Y0CtfV7qrGYWg8lt+evG7asO0GiPuvo5I=
X-Google-Smtp-Source: ACHHUZ4gkb4uXmtBfRalz/8gTBT4f6/AWlotdJNjgnU0y7BmJ/z28Vm/frajygWJFDgVS+dJ1qAf3w6FaHOtUUKNuBY=
X-Received: by 2002:a17:907:2d2c:b0:977:c8a7:bed5 with SMTP id
 gs44-20020a1709072d2c00b00977c8a7bed5mr7336385ejc.47.1686162395234; Wed, 07
 Jun 2023 11:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230216150701.3654894-1-dhowells@redhat.com>
 <CALF+zO=w2Gyz6JtzEoFgTVjH67-_CuTaK7e+2yoHEwXZ8bPx_A@mail.gmail.com>
 <CALF+zO=Y8dMsJ79RYp1e7n9B5_0=segpqW9_tetBqPhFiQcZxA@mail.gmail.com>
In-Reply-To: <CALF+zO=Y8dMsJ79RYp1e7n9B5_0=segpqW9_tetBqPhFiQcZxA@mail.gmail.com>
From: Chris Chilvers <chilversc@gmail.com>
Date: Wed, 7 Jun 2023 19:26:23 +0100
Message-ID: <CAAmbk-cBJprmRsW5uktAm49NtVw9WTLA=LPS7uLkwAknjs_1qA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>, Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Any update on this? I assume it's too late for these patches
 to make 6.4.0. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chilversc[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.41 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.41 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q6xrl-0001GV-UD
Subject: Re: [V9fs-developer] [Linux-cachefs] [PATCH v6 0/2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Any update on this? I assume it's too late for these patches to make 6.4.0.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
