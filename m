Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC243EB4BD
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 17:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2b/nAEJyjI4g8A3SFfFNZsxPRgqLUUPFUJ5dHJkbeuM=; b=iMRJs+9KRR9fXHfkEgUYP1Rkz
	vy5jsylXHpXEIcZwS/hr1e94AfUDtPyvEoork5yTgsEIQNOAOHPMx75IuP06eAa+VVd18iD8Tjdjy
	yw0f5pA6D1yEecsxAI0eAOyJKY1HwZTbPw9fKooj49e8NmJ8IlMxwxuVFo1JvEOs93kK6ART1nZsm
	YToaGWqeDh3RShmMyGLOcWobEsf03z6nHZ+GZ87IK4Dns0mVW77ykEMR8x0bi3Bktw/gEbT8Apct7
	X2tmupUyuz5QK1uyN6EZwFDGQxf4capMdCYP9TgOCxbiH5mTuxNTOtXkoFWzq40Ous+CTxR+jzSvw
	U+FjyogOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDLD-0008SN-8i; Thu, 31 Oct 2019 16:30:31 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDL8-0008Ra-Va
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 16:30:28 +0000
Received: by mail-ot1-f66.google.com with SMTP id t8so5915698otl.6
 for <linux-nvme@lists.infradead.org>; Thu, 31 Oct 2019 09:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7XNlAbe/9W5HkbOJCsUySuQtDsO36dNA+PoXrT1vtMY=;
 b=QvvH/kkVunUgyO6fYKAQFrDSWQNENCmS7l7xALHbgyqBWdvwH5jhQ3wp9ouOw0Y6RV
 b4w6vW61hoFL3yg1YX0wAYxWEQeJLx4REs0pyv3rxCJUc+BH31Iu9/OcnKfLPfDjNjN0
 sxiD8BGQHz2Y7xw1EDI4Xr8a21enHzP669GmW70ZHeSFUcSrdnj16c+KEnrGFSaoQcIo
 Ch83pshDSXpgIN7Yfj2lWSPdG7na21G81Sh8QW5bg84wQY01UDeqHzGHI3WM515ZoX4e
 JtAaYixkeo5bGXq9aYf4hIWVGP+8e3mW0upDHX7SCyHODVDYu6QS6aJRL/VueDtHobws
 zyzw==
X-Gm-Message-State: APjAAAX6fMQILIW0hxsnnGqEGhSFDrEyACBeHoHhgBzomzGN243czLSI
 46gY3lxVnT7uz6orgdyhX+U=
X-Google-Smtp-Source: APXvYqwk+CE7MYlscxinEJ/XeOyBFWZnyOXhYyB/LJNgvm+QMaX0WDDMFs7LH4JgiTbGjttrJJ3Qow==
X-Received: by 2002:a9d:4591:: with SMTP id x17mr5146948ote.112.1572539424021; 
 Thu, 31 Oct 2019 09:30:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q28sm1228193otc.77.2019.10.31.09.30.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 09:30:23 -0700 (PDT)
Subject: Re: [PATCH] nvmet: allow block device to use buffered I/O
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <1572409583-3109-1-git-send-email-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a3b3afa5-a806-d3da-2217-7089026460c2@grimberg.me>
Date: Thu, 31 Oct 2019 09:30:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572409583-3109-1-git-send-email-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093027_023454_A2F7ADD8 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org, hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gTlZNZU9GIHRhcmdldCBhbHJlYWR5IGhhcyBhIHN1cHBvcnQgdG8gZXhlY3V0ZSByZXF1ZXN0
cyBpbiB0aGUKPiBidWZmZXJlZCBJL08gbW9kZSB3aXRoIGZpbGUgYmFja2VuZC4gVGhpcyBwYXRj
aCBhbGxvd3PCoGJsb2NrIGRldmljZXMKPiB0byBiZSB1c2VkIHdpdGggZmlsZSBiYWNrZW5kIGNv
ZGUgc28gdGhhdCBidWZmZXJlZCBJL08gcGFyYW1ldGVyIGNhbgo+IGJlIHNldCBmb3IgYSBibG9j
ayBkZXZpY2UgYmFja2VkIG5hbWVzcGFjZSB3aGVuIG5ld2x5IGludHJvZHVjZQo+IGNvbmZpZ2Zz
IHBhcmFtZXRlciB1c2VfdmZzPTEuCj4gCj4gRm9sbG93aW5nIGlzIHRoZSBwZXJmb3JtYW5jZSBp
bXByb3ZlbWVudCA6LQo+IAo+IERldmljZV9wYXRoID0gL2Rldi9udWxsYjAsIEkvTyB0eXBlID0g
cmFuZHJlYWQuCj4gCj4gV2l0aCB0aGlzIHBhdGNoIGFuZCBidWZmZXJlZCBJL08gPSAwLCB1c2Vf
dmZzPTAgOgo+ICDCoCByZWFkOiBJT1BTPTE5OGssIEJXPTc3Mk1pQi9zICg4MDlNQi9zKSg0NS4y
R2lCLzYwMDAybXNlYykKPiAgwqAgcmVhZDogSU9QUz0xOThrLCBCVz03NzRNaUIvcyAoODExTUIv
cykoNDUuM0dpQi82MDAwMm1zZWMpCj4gIMKgIHJlYWQ6IElPUFM9MTk3aywgQlc9NzcxTWlCL3Mg
KDgwOE1CL3MpKDQ1LjJHaUIvNjAwMDJtc2VjKQo+IAo+IFdpdGggdGhpcyBwYXRjaCBhbmQgYnVm
ZmVyZWQgSS9PID0gMSwgdXNlX3Zmcz0xOgo+ICDCoCByZWFkOiBJT1BTPTk3OWssIEJXPTM4MjVN
aUIvcyAoNDAxME1CL3MpKDIyNEdpQi82MDAwMm1zZWMpCj4gIMKgIHJlYWQ6IElPUFM9OTgzaywg
Qlc9Mzg0MU1pQi9zICg0MDI4TUIvcykoMjI1R2lCLzYwMDAzbXNlYykKPiAgwqAgcmVhZDogSU9Q
Uz05ODBrLCBCVz0zODI4TWlCL3MgKDQwMTRNQi9zKSgyMjRHaUIvNjAwMDJtc2VjKQoKSG93IGNv
bWUgdGhlcmUgaXMgc3VjaCBhIG1hc3NpdmUgY2hhbmdlIGZvciBhIG51bGwgYmxvY2sgZGV2aWNl
CnRoYXQgaXMgZWZmZWN0aXZlbHkgYSBzaG9ydC1jaXJjdWl0PyBXaGF0IGlzIHRoZSBib3R0bGVu
ZWNrIHdpdGgKbnVsbF9ibGsgdGhhdCB0aGlzIHBhdGNoIG92ZXJjb21lcyB3aXRoIHRoZSBwYWdl
IGNhY2hlPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
