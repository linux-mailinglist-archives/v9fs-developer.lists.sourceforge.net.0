Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B336B64F8
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Mar 2023 11:38:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbJ6B-0006cV-8i;
	Sun, 12 Mar 2023 10:38:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vincenzopalazzodev@gmail.com>) id 1pbJ68-0006cL-3h
 for v9fs-developer@lists.sourceforge.net;
 Sun, 12 Mar 2023 10:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:References:Subject:Cc:To:From:
 Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CnXUvgY/lQbEIAhlEWITjQxBBwr5ulB+Ngn573yt/HI=; b=Z9MqiD/tM9g/lMtPTPpygltbZ8
 cIm2a3WiMIXYcTI1HeCs0Td18bACpgbgSCNZuySUnXjjThWtSm2fRi3BbGSKCKQReGR/n2/KaxX3T
 6ldu00phptxYBeU4YUQVcL8etTumVmVRuKJB4WYGDO1Namp35Bkc1AbXMI6Y8/9m0kuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Content-Type:
 Content-Transfer-Encoding:Mime-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CnXUvgY/lQbEIAhlEWITjQxBBwr5ulB+Ngn573yt/HI=; b=jx7XoLeXr2WTCVuatuRmiIzQNv
 f1DAQJLjlbjg5H7FrSC+j2XzvUkHvYDEPyky1NjvtkYo7bSwHtcHNTM/9Vlo0IJAhlhXldJ1frmF/
 hb0/GBGdaz55S2iiw3UlgnlWuAxoSb3yg3GyDte71kUrUjU9oyo9/HyiKmjbktl1rYnc=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbJ68-005apQ-40 for v9fs-developer@lists.sourceforge.net;
 Sun, 12 Mar 2023 10:38:40 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 j19-20020a05600c1c1300b003e9b564fae9so9004429wms.2
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 12 Mar 2023 03:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678617513;
 h=in-reply-to:references:subject:cc:to:from:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CnXUvgY/lQbEIAhlEWITjQxBBwr5ulB+Ngn573yt/HI=;
 b=K++Sac4QXPb78WLLWM02GJThSsUv3qZfeOODf7zH2AwS8i+TW91re2iyfOp4znFqDY
 TMEl/CMOR7T2VBIorTE3Xek4DUJTXGc7BjiRMhyjzDYJGtR7WiAFr9KeZQAhqKvzw0+O
 XR7t72kD2BUjBfkXY+23K89GdgTeejTKGFXZ53eY1CHCq9smOQ5p/GnuvrQWqtdkB0U3
 XfOrilDJxT25DU71vQAGXZLOpr3TI1J9WWz+840jqH2M1k9QHf5jddOexbBqPyScmBK4
 msOJUElVhOnaM1UNc6NKJX6etPi5h6KOTUfap7ygMt/Xrk88z4nYWjrrhAiO3d1Drs9H
 X8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678617513;
 h=in-reply-to:references:subject:cc:to:from:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=CnXUvgY/lQbEIAhlEWITjQxBBwr5ulB+Ngn573yt/HI=;
 b=Afw8j09/AJ4CDdrONxvmUXLElunlBMlUFc+2x4JpZn8GMU+BaPXO/Zr9h/P+of1cBH
 kkwn9iTHmQd4USqHBeXL5ChjuH/rCAsazum7/ooeO8HnREB+xntjm/+6ZqKrtDPBwvSO
 pQIavB0V1Scb42jXatSRD1N+gs75GUtlBtbRsne0yfE5+D6sORw8TjZX4inU7hs+NBcV
 mJjY1osRbLsBmEzQ/aAAoWUlePg1MARXes7H0cnIRCSNBw5aorOEZVOaw1KOGpJO57SG
 ilL2SoIwvBz8o5Uu7Y66QRTlJinhyo9AsNK0CLGEpkO8nY/CQKN+RaWe1UpEKA9GiUqO
 SsAw==
X-Gm-Message-State: AO0yUKV3mxkOUbFe1ocv5Kgn36rPqNc5WQ/XGSdUgRaVCwlyxK8mOnI+
 voLb95c05bGuQ+xv/+T0PNEqCvEMgl3gLQ==
X-Google-Smtp-Source: AK7set8k890tWSm3x1zwHHcZ1fsnkgG8rK7caIZ4MvxJ1EDFfxtQOcnNYywc1mPxSE+XJ778iw+qJg==
X-Received: by 2002:a05:600c:314c:b0:3eb:2f06:c989 with SMTP id
 h12-20020a05600c314c00b003eb2f06c989mr7758660wmo.22.1678617513487; 
 Sun, 12 Mar 2023 03:38:33 -0700 (PDT)
Received: from localhost ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 f18-20020a7bcc12000000b003dc47d458cdsm5650478wmh.15.2023.03.12.03.38.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Mar 2023 03:38:33 -0700 (PDT)
Mime-Version: 1.0
Date: Sun, 12 Mar 2023 11:38:31 +0100
Message-Id: <CR4C8V5T7751.HT9WYT9LB7X1@vincent-arch>
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Ivan Orlov" <ivan.orlov0322@gmail.com>, "David Kahurani"
 <k.kahurani@gmail.com>
X-Mailer: aerc 0.14.0
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
 <CAAZOf24yhpSBd1926v7T=qDwqvFfLsWMJeMKTafeZ=69hJ4rdw@mail.gmail.com>
 <d5bb5ff0-1102-c7cd-c21b-c3a7f4f31717@gmail.com>
In-Reply-To: <d5bb5ff0-1102-c7cd-c21b-c3a7f4f31717@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat Mar 11, 2023 at 6:35 PM CET, Ivan Orlov wrote: > >
 > I'm not sure what are the rules around here but I prefer to use brackets
 > > more generously. > > I think in this particular case they can j [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vincenzopalazzodev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.44 listed in list.dnswl.org]
X-Headers-End: 1pbJ68-005apQ-40
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat Mar 11, 2023 at 6:35 PM CET, Ivan Orlov wrote:
>
> > I'm not sure what are the rules around here but I prefer to use brackets 
> > more generously.
>
> I think in this particular case they can just make the code less 
> readable (considering they will not change the behavior in any way). 
> However, this is eternal discussion and I saw examples of both in the 
> kernel sources.
Maybe this can be a good reading [1], I think it is more a kernel rule?

[1] https://www.kernel.org/doc/html/latest/process/coding-style.html

Cheers

Vincent.

> _______________________________________________
> Linux-kernel-mentees mailing list
> Linux-kernel-mentees@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/linux-kernel-mentees



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
