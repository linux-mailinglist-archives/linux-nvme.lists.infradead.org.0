Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580344A01
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 19:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aL/ycijXaLl94q5y52VdGVqOzkVmTzDLAPmHlUM23Lw=; b=kquCvJjp1ZxYyp
	s0hn/fef053HE1CTH2kT4bF43+61Xn86TIf+/wuKOL6OuMmQANxvKtswj8ZPIGTHf7WOT5hevJrcB
	bVlvhEZlFH7bbXl7My2s8FXNXno9BUyE6oplIRuTgrUO5uQWlAqMO3bvKraDSvueiXpF2Z2sIfuvt
	tOQqemg6rTsYVkCAh2+7GeM7Q4oJi63+S88vuw1btcDolRE/NR0lYZx0G2QMsj03T2vsH7CNHTV/w
	33pF1/lNOZw6SJX20s9YWuKotrT6GXP9ggFx1RDqXwx/di1f9dEsyY9oTsJxRud9bbDrSmAlTAa4T
	P6McUc0jicltr42jDl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTyd-0008PU-2X; Thu, 13 Jun 2019 17:57:31 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTyT-0008OA-RD
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 17:57:23 +0000
Received: by mail-pg1-f193.google.com with SMTP id 83so11377219pgg.8
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 10:57:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B2owxIsjXED7ISo7gHrPQhkn/jOgDforasXydoaC0DY=;
 b=Z651lpjwHOqr8apN2jkZbZRQT+DkOtBKPxYs5RD75HW2QF4Fmmt0b2qAcxF7mlyEta
 6menxTd1//BZnJKoBYZSgo/wF+ZGgcDBPm/WrXK/Ewke4/2uZs8FlwpuxFzYMOn/eKt9
 c59NhRZprRCsqX2uiHCAbbxc2yiUkjGX1/1sBDQNcVQVOuJPDPAQ2q+rKZYzcWZGP/9Y
 6DgQP7jAsf3BB/XqKq+6IFcxf2Zk8JOhHH2SEyxhb49vgqYPZnqPirNlWOznT0rY84Of
 W9JeEXXFi5F0EUx9n6HLsWbwMOxzZp9vhtsfRU9dKoC+96L9JUawgYnY4Q1Vrwf9tdaw
 v0Fg==
X-Gm-Message-State: APjAAAU3d5DMpiOEDxJPlr7s7zhey2GMQ50LwEDTj/fDy3pLRiVPTX9I
 PqQQKN6OsqMxh9KjcO8E8aQ=
X-Google-Smtp-Source: APXvYqysirYRugl6MLB/8Dl2bMCcKX8Uv1geW30RMdbinq9CoFRL0rpV9P5WWML5Ida+/X1YXohK+w==
X-Received: by 2002:aa7:818b:: with SMTP id g11mr10415175pfi.122.1560448640374; 
 Thu, 13 Jun 2019 10:57:20 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:fb9c:664d:d2ad:c9b5?
 ([2620:15c:2c1:200:fb9c:664d:d2ad:c9b5])
 by smtp.gmail.com with ESMTPSA id j9sm311048pff.88.2019.06.13.10.57.19
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 10:57:19 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-4-bvanassche@acm.org> <yq15zpa2que.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <fcd3b41c-38b9-4865-05c0-2f96c9382ea5@acm.org>
Date: Thu, 13 Jun 2019 10:57:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq15zpa2que.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_105721_898906_41930F1A 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8xMi8xOSA2OjUzIFBNLCBNYXJ0aW4gSy4gUGV0ZXJzZW4gd3JvdGU6Cj4gCj4gQmFydCwK
PiAKPj4gKwluYXd1cGYgPSAoMSArIG5zLT5jdHJsLT5zdWJzeXMtPmF3dXBmKSAqIGJzOwo+PiAr
CWlmIChpZC0+bnNmZWF0ICYgKDEgPDwgMSkpCj4+ICsJCW5hd3VwZiA9ICgxICsgaWQtPm5hd3Vw
ZikgKiBiczsKPiAKPiBUaGlzIHRyaXBwZWQgbWUgdXAgYSBiaXQuIEkgd291bGQgaGF2ZSBwcmVm
ZXJyZWQgYW4gZWxzZSBzdGF0ZW1lbnQgYW5kCj4gbWF5YmUgYSBjbGFyaWZ5aW5nIGNvbW1lbnQg
dG8gbWFrZSBpdCBvYnZpb3VzIHdoZXRoZXIgdGhlIHZhbHVlIGNvbWVzCj4gZnJvbSB0aGUgY29u
dHJvbGxlciBvciB0aGUgbmFtZXNwYWNlLgo+IAo+IEFsc28sIHVubGlrZSBhd3VwZiwgbmF3dXBm
IGlzIG5vdCBhIDAtYmFzZWQgdmFsdWUgKDAgbWVhbnMgInVzZSBhd3VwZiIKPiBhbmQgbm90IDEg
bG9naWNhbCBibG9jaykuCgpIaSBNYXJ0aW4sCgpJIGFncmVlIHRoYXQgTkFXVVBGID09IDAgbWVh
bnMgdGhhdCBBV1VQRiBzaG91bGQgYmUgdXNlZCBpbnN0ZWFkLiBCdXQKYXJlIHlvdSBzdXJlIHRo
YXQgTkFXVVBGIGlzIG5vdCAwJ3MtYmFzZWQ/IEZyb20gdmVyc2lvbiAxLjQgb2YgdGhlIE5WTWUK
c3BlY2lmaWNhdGlvbjoKCk5hbWVzcGFjZSBBdG9taWMgV3JpdGUgVW5pdCBQb3dlciBGYWlsIChO
QVdVUEYpOiBUaGlzIGZpZWxkIGluZGljYXRlcwp0aGUgbmFtZXNwYWNlIHNwZWNpZmljIHNpemUg
b2YgdGhlIHdyaXRlIG9wZXJhdGlvbiBndWFyYW50ZWVkIHRvIGJlCndyaXR0ZW4gYXRvbWljYWxs
eSB0byB0aGUgTlZNIGR1cmluZyBhIHBvd2VyIGZhaWwgb3IgZXJyb3IgY29uZGl0aW9uLgpBIHZh
bHVlIG9mIDBoIGluZGljYXRlcyB0aGF0IHRoZSBzaXplIGZvciB0aGlzIG5hbWVzcGFjZSBpcyB0
aGUgc2FtZQpzaXplIGFzIHRoYXQgcmVwb3J0ZWQgaW4gdGhlIEFXVVBGIGZpZWxkIG9mIHRoZSBJ
ZGVudGlmeSBDb250cm9sbGVyIGRhdGEKc3RydWN0dXJlLiBBbGwgb3RoZXIgdmFsdWVzIHNwZWNp
ZnkgYSBzaXplIGluIHRlcm1zIG9mIGxvZ2ljYWwgYmxvY2tzCnVzaW5nIHRoZSBzYW1lIGVuY29k
aW5nIGFzIHRoZSBBV1VQRiBmaWVsZC4gUmVmZXIgdG8gc2VjdGlvbiA2LjQuClsgLi4uIF0KQXRv
bWljIFdyaXRlIFVuaXQgUG93ZXIgRmFpbCAoQVdVUEYpOiBbIC4uLiBdIFRoaXMgZmllbGQgaXMg
c3BlY2lmaWVkIGluCmxvZ2ljYWwgYmxvY2tzIGFuZCBpcyBhIDDigJlzIGJhc2VkIHZhbHVlLiBU
aGUgQVdVUEYgdmFsdWUgc2hhbGwgYmUgbGVzcwp0aGFuIG9yIGVxdWFsIHRvIHRoZSBBV1VOIHZh
bHVlLgoKU2luY2UgdGhlIHNwZWMgc2F5cyB0aGF0IE5BV1VQRiBhbmQgQVdVUEYgdXNlIHRoZSBz
YW1lIGVuY29kaW5nLCBkb2VzCnRoYXQgbWVhbiB0aGF0IE5BV1VQRiBpcyBhbHNvIDAncyBiYXNl
ZD8KClRoYW5rcywKCkJhcnQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
