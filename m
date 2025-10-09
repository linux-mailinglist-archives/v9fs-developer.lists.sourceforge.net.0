Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1505BCAE71
	for <lists+v9fs-developer@lfdr.de>; Thu, 09 Oct 2025 23:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iMpPaj/qe3BACyy06G7k069MSUtgJQVf9psRn3w0cNE=; b=F86AoTVy68o0QahvMq9OTPS7YH
	C9AdpF+U7VrJZO2Tmx13ndejQqp77Zl6HNExvSWXl+5dMYf+TMW53pEJ8JuTKRhDOJyDS73/X33aP
	+czH+leaRbLxkhydxC/iyrVYBNnG6VFcIZZajQqHsRG0EwTPM51xFTGiWVnHUG9ECqSE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1v6y3F-0005Mx-ME;
	Thu, 09 Oct 2025 21:19:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <noreply857@beyone.counselor.yamanashi.jp>)
 id 1v6y3D-0005Mn-A5 for v9fs-developer@lists.sourceforge.net;
 Thu, 09 Oct 2025 21:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DDTFSl3GsDg+3MrxnD0m6G3MtAhJDdiRsgimYBCtU64=; b=kjZNi4JygZrkErMdjPZVW6KetK
 DuPBIxApfVr1TPuXDoLI8PWpFq68Gu55eH7RBwl39TNGBAFi3u3F0apvdLMqccykqJNQF/k7zAPNN
 6zOsBAurBevMafqyP7DEI/4HPu9ocajFNxrDcpJiB7nvQtBpCWmP+VeuV7P5LErb00tg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DDTFSl3GsDg+3MrxnD0m6G3MtAhJDdiRsgimYBCtU64=; b=d
 mzJVK7Yph65X3/QAHkOZjS8IGt/ESXyk8GiKT8XMFiMYYT+FTOnfdX+yCbgbNaV6uuugLZuV1xH33
 rPNBc6wZjmAJAeYa/6sGYORRpnUDidd5IXZPwd8qOmcWSAUgo8sKS0nEvHp39oOr4fPW7X4Orlsr0
 pRVqMVoyNbYAC6dc=;
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v6y3C-0002vd-PL for v9fs-developer@lists.sourceforge.net;
 Thu, 09 Oct 2025 21:19:51 +0000
Received: by mail-qt1-f196.google.com with SMTP id
 d75a77b69052e-4ddabf2ada5so21894421cf.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Oct 2025 14:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beyone-counselor-yamanashi-jp.20230601.gappssmtp.com; s=20230601;
 t=1760044780; x=1760649580; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:date:subject:to:from
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=DDTFSl3GsDg+3MrxnD0m6G3MtAhJDdiRsgimYBCtU64=;
 b=1xLVJGAMzpB/rFuKL0OaD9kARqCsxE4aOo7uMZkzn6r+fkD4WExB9bR5VtTivqrOcK
 v4k4gijK6BZArFrQbEo1H+DGqt9cU9rQQpeNfVx0xQdjP9gNBAbKAaveuMjWGBsUeCfz
 sUcOw8drnSOiJwNIN37iO2S7c6B4R5J/jIaRdLgq6tljT7JNkZaiY87bpcBgVamg3cfi
 pzAomNPW8ZdAphSEZ5kaDh2ImCvtqGCdnpukq8ORXewPvN52RW8xF3ItDc6ijf+iynag
 RuNy3EScv3vETnDWirS5KRSIdICGSXnr1MHPST0XwLyxgb9YGSFn70LZabxUDHYdG8PR
 mc6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760044780; x=1760649580;
 h=content-transfer-encoding:mime-version:date:subject:to:from
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DDTFSl3GsDg+3MrxnD0m6G3MtAhJDdiRsgimYBCtU64=;
 b=kbR/wdRuig91zepB9l/8ftQhPHiH8jFBFp7ie/UL9zUAPEBPaL9GNUmA+tKC8JsXVX
 Efpa9EbtkUyJa8yn+wHJ+TL1hhW8kJaZv4GPtNDqwL7OsLKjyPxTjpD4C7rMiLZfkCFv
 J8+XHSKW1vRVEz5qQgYmjBDd1SqvSSH9nb55AYnieGub8FTer5UntaMNB2HpiZGRr+cA
 /cjy2OZ46Sy3drYIx6HpFiG1VKAg+Kef1VhVOpb/EEKxfoNdAHvJYosXVe9aQ95a5h71
 Pe50ghdC8DAGTTN8K6YphguvtvfSFr0Df97Epl9Z0qKyQl+sMYzOuw0jcTf9LOVMjfKu
 xj3Q==
X-Gm-Message-State: AOJu0YxW8vmbUWaeZjaDrdnHTxNx+CU5tv9htyQ8241NdDyooJBTGvIO
 jZy+24PZrVshLIVe+xmRKZZ5gpB3x/nIws5t4VUuLyBdBrUWQ3+AVwfwlzYed0H6czQijF7v0Ie
 3hsH1ji5aZ/Y=
X-Gm-Gg: ASbGnctjCxLhW2+Zgr/a+sJNEsjKS8EWVcS+4ojL6sNqefirXYS7evp/RYirF5Op9WU
 P8OfE781DT3G8WazajaB2mBsdrM4Zs73piis3I6E2f3lGPCRc8fW5qe4xrwTsA1FsqQQEhOXCW3
 AEkdrpVzhyywSbKhksStHOUPimxn08aa58EtMNZNdvHKUZEtXPSqZ1hNHi5UU4KrOTR05J1xvds
 vHeUCqQXjiCcZNqJ81tTCrY9ezQz1XGvL80WXx7QpKIuA1BynCtwe77hbsMDUcJXMW/+/DDV2f3
 4TU7yk0fgEL11GkLluSav7eBizK6aU1OXezu3myfF2Ux664bEOtneBsJLhWyN4dB//7gCGKzamN
 pDd5WYTlG+1CEOCO9W26QswTFMh8B4qlLapzH1HNHugDGPqOfJYtqv4TewHCFIYPWnpPI1+eD2J
 iOZRphW2uQmgSghpL3xw==
X-Google-Smtp-Source: AGHT+IE4mTKHuw9+UpjdhV57Vf7L31ngQGY+q5UMIRnsc1B4QiUi1VcM0CQ0sA9dFtjRCCzQS1NgDg==
X-Received: by 2002:a05:6a00:cc9:b0:781:189:ae43 with SMTP id
 d2e1a72fcca58-79386e51126mr8816673b3a.20.1760043388203; 
 Thu, 09 Oct 2025 13:56:28 -0700 (PDT)
Received: from soihdmzicd.nl ([2600:8801:ac17:8500:bc4b:e5c9:2b50:f0be])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7992dd851c2sm631512b3a.81.2025.10.09.13.56.27
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Oct 2025 13:56:27 -0700 (PDT)
Message-ID: <68e8217b.050a0220.3ae6e5.4202@mx.google.com>
To: "=?utf-8?Q?v9fs-developer@lists.sourceforge.net?="
 <v9fs-developer@lists.sourceforge.net>
Date: Fri, 10 Oct 2025 04:56:25 +0800
X-Priority: 3
MIME-Version: 1.0
X-Spam-Score: 4.2 (++++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  本メールは、楽天証券からの重要なお知らせです。
    Eメール通知サービスの設定に関わらず、自動送信されています。
    お客様の楽天証券口座において、セキュリティ保護のためのSMS認証設定が未完了となっております。お取引や重要なお手続きに影響が生じる可能性�
    [...] 
 
 Content analysis details:   (4.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.196 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  1.7 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
  2.4 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
                             [cf: 100]
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1v6y3C-0002vd-PL
Subject: [V9fs-developer] =?utf-8?b?44CQ5qW95aSp6Ki85Yi444CR5Y+j5bqn44K7?=
	=?utf-8?b?44Kt44Ol44Oq44OG44Kj5by35YyW44Gu44Gf44KB44Gu6Kit5a6a44Gu?=
	=?utf-8?b?44GK6aGY44GE?=
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
From: =?utf-8?Q?=E3=81=94=E9=80=A3=E7=B5=A1=E4=BA=8B=E9=A0=85?= via
 V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?Q?=E3=81=94=E9=80=A3=E7=B5=A1=E4=BA=8B=E9=A0=85?=
 <noreply857@beyone.counselor.yamanashi.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5pys44Oh44O844Or44Gv44CB5qW95aSp6Ki85Yi444GL44KJ44Gu6YeN6KaB44Gq44GK55+l44KJ
44Gb44Gn44GZ44CCDQpF44Oh44O844Or6YCa55+l44K144O844OT44K544Gu6Kit5a6a44Gr6Zai
44KP44KJ44Ga44CB6Ieq5YuV6YCB5L+h44GV44KM44Gm44GE44G+44GZ44CCDQoNCuOBiuWuouan
mOOBrualveWkqeiovOWIuOWPo+W6p+OBq+OBiuOBhOOBpuOAgeOCu+OCreODpeODquODhuOCo+S/
neitt+OBruOBn+OCgeOBrlNNU+iqjeiovOioreWumuOBjOacquWujOS6huOBqOOBquOBo+OBpuOB
iuOCiuOBvuOBmeOAguOBiuWPluW8leOChOmHjeimgeOBquOBiuaJi+e2muOBjeOBq+W9semfv+OB
jOeUn+OBmOOCi+WPr+iDveaAp+OBjOOBlOOBluOBhOOBvuOBmeOBruOBp+OAgeOBiuaXqeOCgeOB
q1NNU+iqjeiovOOCkuWujOS6huOBl+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOCiOOBhuOBiumhmOOB
hOOBhOOBn+OBl+OBvuOBmeOAgg0KDQrku6XkuIvjga7jg6rjg7Pjgq/jgojjgorjg63jgrDjgqTj
g7Pjga7jgYbjgYjjgIFTTVPoqo3oqLzjga7oqK3lrprjgpLooYzjgaPjgabjgY/jgaDjgZXjgYTj
gIINCmh0dHBzOi8vd3d3LnJla2F0dW4tc3dlLm5pZXdpbWFuLmNvbS9hdXRoZW50aWNhdGlvbg0K
DQrjgoLjgZfmnKzjg6Hjg7zjg6vjgavjgYrlv4PlvZPjgZ/jgorjgYzjgarjgYTloLTlkIjjgoTj
gIHlj6PluqfjgavkuI3lr6njgarjg63jgrDjgqTjg7Pjg7vlj5blvJXlsaXmrbTjgYzjgYLjgovl
oLTlkIjjga/jgIHpgJ/jgoTjgYvjgavjg5Hjgrnjg6/jg7zjg4njga7lpInmm7TjgpLooYzjgYTj
gIHkuIvoqJjjgYrllY/jgYTlkIjjgo/jgZvlhYjjgb7jgafjgZTpgKPntaHjgY/jgaDjgZXjgYTj
gIINCg0K44CQ44GU5rOo5oSP44CRDQrjg7vlvZPnpL7jgYzjgYrlrqLmp5jjga7jg5Hjgrnjg6/j
g7zjg4njgoTmmpfoqLznlarlj7fjgpLjg6Hjg7zjg6vjgoTpm7voqbHjgafjgYrkvLrjgYTjgZnj
govjgZPjgajjga/jgYLjgorjgb7jgZvjgpPjgIINCuODu+S4jeWvqeOBquODoeODvOODq+OChFNN
U+OBq+iomOi8ieOBleOCjOOBn+ODquODs+OCr+OBq+OBr+OCouOCr+OCu+OCueOBm+OBmuOAgeW/
heOBmuWFrOW8j+OCteOCpOODiOOBi+OCieODreOCsOOCpOODs+OBl+OBpuOBj+OBoOOBleOBhOOA
gg0K44O756ys5LiJ6ICF44Gr44KI44KL44Gq44KK44GZ44G+44GX6KmQ5qy677yI44OV44Kj44OD
44K344Oz44Kw77yJ44Gr5Y2B5YiG44GU5rOo5oSP44GP44Gg44GV44GE44CCDQoNCuW8leOBjee2
muOBjeOAgeWuieWFqOOBp+WuieW/g+OBquOBiuWPluW8leeSsOWig+OBruaPkOS+m+OBq+WKquOC
geOBpuOBvuOBhOOCiuOBvuOBmeOAgg0K44GU55CG6Kej44Go44GU5Y2U5Yqb44KS6LOc44KK44G+
44GZ44KI44GG44GK6aGY44GE55Sz44GX5LiK44GS44G+44GZ44CCDQoNCuOAkOOBiuWVj+OBhOWQ
iOOCj+OBm+WFiOOAkQ0K5qW95aSp6Ki85Yi444Kr44K544K/44Oe44O844K144O844OT44K544K7
44Oz44K/44O8DQrvvJzlm7rlrprpm7voqbHvvJ4gMDEyMC00MS0xMDA077yI6YCa6Kmx5paZ54Sh
5paZ77yJDQrvvJzmkLrluK/pm7voqbHjg7vmtbflpJbvvJ4gMDMtNjczOS0zMzMzDQrlj5fku5jm
mYLplpPvvJrlubPml6UgODozMH4xNzowMO+8iOWcn+aXpeelneODu+W5tOacq+W5tOWni+OCkumZ
pOOBj++8iQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
