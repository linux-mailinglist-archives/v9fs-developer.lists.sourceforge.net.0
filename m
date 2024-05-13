Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 791748C44D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 May 2024 18:07:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s6YDT-0005ta-Sa;
	Mon, 13 May 2024 16:07:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@jed75.com>) id 1s6YDS-0005tT-MJ
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 May 2024 16:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Date:
 Message-ID:Mime-Version:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMPbu1yLCImf3JVcu3V1glU61ccNMmgLKG6Qft18nY4=; b=lGkNgJAVujfeaCc2B4ufycWQGa
 Hp5jojeOF/2tgHjEKqxa9/fdk/VL1Ml3RYH9Q9Bgy6weKFRQAKopx7hqykyadBHm3UpsyG3HdUyab
 SgMGOozaL5iGCvQU+toqoduhS7TUJHfGwPvuB9WrX9AODGcQ1MKerY+WROgNVR4f47V4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Date:Message-ID:Mime-Version:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UMPbu1yLCImf3JVcu3V1glU61ccNMmgLKG6Qft18nY4=; b=M
 j4iup2Usa555+1+hNGX/p5FIQR/iO+YoNOG3Ypv7KdfXaKXBIyIuBQrHknXA1i8f33H3UH4Yt3auU
 1XfdPgc+pKNFVLDlkyG5T0u1Du01e9HI7ykIVfoNYIzNG1peK49jAsPylLnM5/4ZUqHSL5qd30mXE
 VFOcv7zOyQUegfrk=;
Received: from [137.220.233.105] (helo=mail0.jed75.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6YDS-00052x-An for v9fs-developer@lists.sourceforge.net;
 Mon, 13 May 2024 16:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=jed75.com; 
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@jed75.com;
 bh=UMPbu1yLCImf3JVcu3V1glU61ccNMmgLKG6Qft18nY4=;
 b=hMrEs4fh184SNvz8QqZcmhcDrH4zj/9ohqopeID9bDBntMYRkFbYU0dNbwoM+iV3gVNC2NJLclV0
 7UwkD2Gqf1ZNx0nhLfAXMUcvOYdSqiVCr8dXir8GLq8lO2wG9oXPuTY/SHESrnrPyRw8V8VRZmZ4
 8jI6B/JpBNf5exIA+yA=
From: =?utf-8?Q?=E8=87=AA=E5=8B=95=E3=83=A1=E3=83=BC=E3=83=AB=E9=80=9A=E7=9F=A5?=
 <no-reply@jed75.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
Message-ID: <tencent_2903F3C86C172E7F38F1C787@jed75.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Mon, 13 May 2024 23:47:26 +0800
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  イオンカードクラシック※会員 v9fs-developer@lists.sourceforge.net
    このたびはイオンカードをご利用いただき、誠にありがとうございます。
    昨日、お客様のクレジットカードで消費支出が発生したことをお知らせい�
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: equi-works.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [137.220.233.105 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1s6YDS-00052x-An
Subject: [V9fs-developer] =?utf-8?b?44CQIOOCpOOCquODs+OCq+ODvOODiSDjgJE=?=
	=?utf-8?b?5rG65riI5a6M5LqG44Gu44GK55+l44KJ44Gb?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44Kk44Kq44Oz44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhIHY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KDQrjgZPjga7jgZ/jgbPjga/jgqTjgqrjg7Pjgqvjg7zj
g4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbj
gYTjgb7jgZnjgIINCuaYqOaXpeOAgeOBiuWuouanmOOBruOCr+ODrOOCuOODg+ODiOOCq+ODvOOD
ieOBp+a2iOiyu+aUr+WHuuOBjOeZuueUn+OBl+OBn+OBk+OBqOOCkuOBiuefpeOCieOBm+OBhOOB
n+OBl+OBvuOBmeOAgg0K44Gd44Gu5pSv5omV44GE44Gu6Kmz57Sw44Gv5qyh44Gu44Go44GK44KK
44Gn44GZ44CCDQrjgZQg5YipIOeUqCDml6Ug5pmCIO+8mjIwMjTlubQwNeaciDEz5pelIDIxOjQ5
IFBNDQrjgZQg5YipIOeUqCDloLQg5omAIO+8muWNg+S7o+eUsOS4gOODhOapiyAxIOS4geebruW6
lyAo44K744OW44Oz44Kk44Os44OW44OzKQ0K44GUIOWIqSDnlKgg6YeRIOmhjSDvvJo5NTMw5YaG
DQoNCuOCq+ODvOODieOCkuS9v+eUqOOBl+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOBr+OAgeS7
peS4i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OBl+OBpuOCr+ODrOOCuOODg+ODiCDjgqvj
g7zjg4nmlK/miZXjgYTjga7mib/oqo3jgpLjgq3jg6Pjg7Pjgrvjg6vjgZfjgabjgY/jgaDjgZXj
gYTjgIINCmh0dHBzOi8vZXF1aS13b3Jrcy5jb20NCg0K44Kk44Kq44OzTkVU44Gr44GU55m76Yyy
44GE44Gf44Gg44GE44Gm44GE44KL44Oh44O844Or44Ki44OJ44Os44K544G444GK55+l44KJ44Gb
44GZ44KL44K144O844OT44K544Gn44GZ44CCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQ0K4pagIOeZuiDooYwg6ICFIOKWoA0K5qCq5byP5Lya56S+44Kk44Kq44Oz6YqA6KGM
DQrilqAg5qWt5YuZ5Y+X6KiX5Lya56S+IOKWoA0K44Kk44Kq44Oz44OV44Kj44OK44Oz44K344Oj
44Or44K144O844OT44K55qCq5byP5Lya56S+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
