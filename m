Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2484A77BA1
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k6gpgUQS4pKVDlb8LXwlD3x/ctaSF1x+HWdO89cVJRc=; b=YdDnGKRCCU/WtrgcMT5v8aL3M
	QFVD+Zer5hhLO/RZCJtLXLBJvwP+uZDiyxYsYdV3Pv3jnkM0pYu0Iy0naG3YFHF+JaDJ/TbfARv48
	cqMcjxQ7kfRkznQwPHCEH/BZ7+81avvdMaN6ZYHh3qWgnAuwL/vrK5wiGuj/SUjaZhGOFHHAP3wE6
	yu3k5sggAiecwsh7Dh0UtCaAd8nQ+jVSD1bO8KgIv4cVIDhyZmQRD+yCDpTFQ7Oajyj+Z5kk8bnBC
	E7Lmy7FlWkFSKj/s+5yZvt6WhTPocHn0+XNtFZPAjrvbtxVJKq+oKnV3VbwjQBB5FOeILHIjmMM8E
	t8IbvFO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSl7-0002m7-DH; Sat, 27 Jul 2019 19:53:37 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSkx-0002ln-Ub
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:53:29 +0000
Received: by mail-ed1-x542.google.com with SMTP id k21so56018037edq.3
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/Cz5XbvmhMLh1WoTohb0dPL9fXcWkx9P72EyaOkUgLE=;
 b=k+Puz4WgTPbpetBEvGZHgpF9otktK6mG3GRwKVySM2iFYSQFi/n9mhTWMaQAW/CWmI
 XH33YNn6TJrLCpXuCeyQC6XZBg95XvP8FpLrRU03s/2nsRpDDv/PaYyBkinlNCmcsKgW
 91o8woVy+o7L7zgjeur2FRPMsZSEP4m3qQE0h6bDTngCrVwwHtFtPuwM4JgplefrPS8W
 WElH8h465Fw/O76CmyDDTc+Xzoj71hI7LbRUiZq+v+fINP7l1DqiPuVkMkd4JQonM87p
 QhCQPExQPkr+tfA8AHlHR9ky9vt7QH/UO1zW2o3EsdNktbfEBvQmtuosslIGftMIXVq1
 fskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/Cz5XbvmhMLh1WoTohb0dPL9fXcWkx9P72EyaOkUgLE=;
 b=gGCZi7s5s52W+Z81iVQEVw41ghlyxpUrW9+SOt90N5fYrXVrrOH0eOBnDc4EnKrVVd
 SurpkMIczO6P1WKT9WtThdm/SV3vLR85tRhGv1GQi79fd5Yl3E0B1tGHdiswfoSwsDkC
 sePHJ6FHzlYwUudc+DNSco9zS73hS+79r4lZWbLPfadfrn6Ybqj57dqAvpMZGFaJ1ZDj
 qO/PfANs000UysEC98fYnuqOqPSOahJ//ix+Rs2SDZlcndAbGjEskLRAod9utIIilEEC
 xzY/rNzC+hX+eEyLFhLifjWNrY7BXDJiqRMhu1J2jZQBSrBZxEqjjvtTJmiWOHL//SV6
 iOzA==
X-Gm-Message-State: APjAAAVBFa11awl/Fq6vn/fPwwqNeUQpWwMwrOL4h+6fl/ESyqXgXJyT
 cPDmQmphDp7yHIyUOCSn71w=
X-Google-Smtp-Source: APXvYqxqFzzFKC43CiC5e1kPrKUwgtOhQluaPIZ2YuMVIJPLU1G+QAJWeENP85rk/Vav4H0ht1L49Q==
X-Received: by 2002:a50:9ec3:: with SMTP id a61mr87339420edf.184.1564257206364; 
 Sat, 27 Jul 2019 12:53:26 -0700 (PDT)
Received: from [192.168.87.120] ([86.52.229.18])
 by smtp.gmail.com with ESMTPSA id v12sm10829036ejj.52.2019.07.27.12.53.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 12:53:25 -0700 (PDT)
Subject: Re: [PATCH V2 3/3] lnvm: introduce alias geometry for id-ns for lnvm
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
 <20190727193249.22655-4-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <a6fd74d8-5ebc-2c16-82c1-3af5d6782264@lightnvm.io>
Date: Sat, 27 Jul 2019 21:53:24 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190727193249.22655-4-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_125327_984894_2D43DE27 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yNy8xOSA5OjMyIFBNLCBNaW53b28gSW0gd3JvdGU6Cj4gTm93IHdlIGhhdmUgMi4wIE9D
U1NEIHNwZWMgd2hpY2ggaW50cm91ZGNlcyBHZW9tZXRyeSBjb21tYW5kIGluc3RlYWQgb2YKPiBJ
ZGVudGl0eSBvciBzb21ldGhpbmcgZWxzZS4gIFRoaXMgcGF0Y2gganVzdCBhZGRzIGFuIGFsaWFz
IGZvciB0aGlzCj4gY29tbWFuZCBmb3IgdGhlIGdpdmVuIE5WTWUgbmFtZXNwYWNlIHdpdGggYmFj
a3dhcmQgY29tcGF0aWJpbGl0eS4KPiAKPiBDYzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwu
b3JnPgo+IENjOiBNYXRpYXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgo+IENjOiBKYXZpZXIg
R29uesOhbGV6IDxqYXZpZXJAamF2aWdvbi5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlud29vIElt
IDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4KPiAtLS0KPiAgIHBsdWdpbnMvbG52bS9sbnZtLW52
bWUuaCB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9wbHVnaW5zL2xudm0vbG52bS1udm1lLmggYi9wbHVnaW5z
L2xudm0vbG52bS1udm1lLmgKPiBpbmRleCBlMjVmNzU2Li40NWIzY2YwIDEwMDY0NAo+IC0tLSBh
L3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaAo+ICsrKyBiL3BsdWdpbnMvbG52bS9sbnZtLW52bWUu
aAo+IEBAIC0xMSw3ICsxMSw3IEBAIFBMVUdJTihOQU1FKCJsbnZtIiwgIkxpZ2h0TlZNIHNwZWNp
ZmljIGV4dGVuc2lvbnMiKSwKPiAgIAlDT01NQU5EX0xJU1QoCj4gICAJCUVOVFJZKCJsaXN0Iiwg
Ikxpc3QgYXZhaWxhYmxlIExpZ2h0TlZNIGRldmljZXMiLCBsbnZtX2xpc3QpCj4gICAJCUVOVFJZ
KCJpbmZvIiwgIkxpc3QgZ2VuZXJhbCBpbmZvcm1hdGlvbiBhbmQgYXZhaWxhYmxlIHRhcmdldCBl
bmdpbmVzIiwgbG52bV9pbmZvKQo+IC0JCUVOVFJZKCJpZC1ucyIsICJMaXN0IGdlb21ldHJ5IGZv
ciBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2lkX25zKQo+ICsJCUVOVFJZKCJpZC1ucyIsICJMaXN0
IGdlb21ldHJ5IGZvciBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2lkX25zLCAiZ2VvbWV0cnkiKQo+
ICAgCQlFTlRSWSgiY2h1bmstbG9nIiwgIkNodW5rIEluZm9ybWF0aW9uIExvZyBQYWdlIiwgbG52
bV9jaHVua19sb2cpCj4gICAJCUVOVFJZKCJpbml0IiwgIkluaXRpYWxpemUgbWVkaWEgbWFuYWdl
ciBvbiBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2luaXQpCj4gICAJCUVOVFJZKCJjcmVhdGUiLCAi
Q3JlYXRlIHRhcmdldCBvbiB0b3Agb2YgYSBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2NyZWF0ZV90
Z3QpCj4gCgpUaGFua3MuIFdvcmtzIGZvciBtZS4KClNpZ25lZC1vZmYtYnk6IE1hdGlhcyBCasO4
cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbnZtZQo=
