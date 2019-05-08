Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4997B18075
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gvoZ4WK+OcdAIioCeGPtQCuam7/IJlgrS1ClrP+r8qI=; b=WxHMtmoTQhc6kGmYFtscbNQNo
	Cy0JnJnmBHvZq+3IuTdjUeW6t5bs/kPu8Z9W6j/AiueKCWrqVB4EeAp4rJv9jieBCVIJFsmFyv/eX
	SXB+JiJsfdZDEj2OBGQ6Kx5TnW4XT0QpR0rh4KQZkAAxp0tAw1cqzgHCECEvi4eX1OvFlqqJoFH4B
	QZnQanolJNXgVvbCTRTixJi5TOEOT4Hca0gx0vl9rYTsMQs09TtQRnOZdghh1e+Rluj8KhPdc+26N
	3VeZ4sav06OtN/sqwqJYGqcawfU8aMtXb9zxPGDWmfu1/e0YJ/aaxSzj/11RuokhgK8tLs3+MDtXe
	4uh5dT1pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSGt-0007Rq-PI; Wed, 08 May 2019 19:30:31 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSGo-0007R3-0n
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:30:27 +0000
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hOSGm-0003S3-1A
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:30:24 +0000
Received: by mail-pf1-f198.google.com with SMTP id t1so13276566pfa.10
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 12:30:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=cCKA80aIyIzqzmA17kQSPJ30eCGEekyYUlZQPpyEa+Q=;
 b=MKi4j61CVjPMhxa+GHVztP5ZjkVuJwmJQH1/vlxkU7F8nM04WTW1c0jZBo1HW97lrF
 QoxdSJWqYEzvvXPYXS5hweXvIW3gTXw1N3fwT0grNXQGvcCu9gsrU1ALfM4W3KKiSAqg
 /tvUFAvyIa0Pq3V36is+9hZuYXF/GR5ZIjN/ZIu5wlKQKtDuS3DdwYPhHxn6dwerEFfv
 c96ZymLf5KM11LpjPzTTtM5xibY8ZTdCTNL+bzuulNXJWYbJlcSpU5HrEVqKD/7Wik7G
 5m1UnhR0ruwzGU+VcsoCmlPUXX0wqNfKyl7+dZQaLKe1/nVclKGfSbNcGDoi1ss4Q3u7
 /2jA==
X-Gm-Message-State: APjAAAW2XukA11YkL/K/LGZfe/kVStKd19wSnY0nSrqxKzLAYUpfhMTR
 mU9bX8HNhrGH0cUzWA1yX+Qn+yNAsMB4t6ZswOfKyrsH0JAiSGHqfFhcccscHOa1GUf89CzqhsY
 QauOWSY3QeXP6CrtrL0Pz+98nJ8wTq11iXkirBn3Uy/RW
X-Received: by 2002:a17:902:b092:: with SMTP id
 p18mr32652964plr.323.1557343822779; 
 Wed, 08 May 2019 12:30:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyg7+aZTDLDPgmVT2n/95vy67ghG5QewkjADQCz3WUrlQ4lRrhvdNgQh3JMNa+O6N4fax2lkw==
X-Received: by 2002:a17:902:b092:: with SMTP id
 p18mr32652935plr.323.1557343822519; 
 Wed, 08 May 2019 12:30:22 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id o71sm29925608pfi.174.2019.05.08.12.30.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 12:30:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190508191624.GA8365@localhost.localdomain>
Date: Thu, 9 May 2019 03:30:18 +0800
Message-Id: <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
To: Keith Busch <kbusch@kernel.org>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_123026_200686_2288B559 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: axboe@fb.com, sagi@grimberg.me,
 Mario Limonciello <mario.limonciello@dell.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMDM6MTYsIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4gd3JvdGU6Cgo+IE9uIFRo
dSwgTWF5IDA5LCAyMDE5IGF0IDAyOjU5OjU1QU0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6
Cj4+ICtzdGF0aWMgaW50IG52bWVfZG9fcmVzdW1lX2Zyb21faWRsZShzdHJ1Y3QgcGNpX2RldiAq
cGRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgbnZtZV9kZXYgKm5kZXYgPSBwY2lfZ2V0X2RydmRhdGEo
cGRldik7Cj4+ICsJaW50IHJlc3VsdDsKPj4gKwo+PiArCXBkZXYtPmRldl9mbGFncyAmPSB+UENJ
X0RFVl9GTEFHU19OT19EMzsKPj4gKwluZGV2LT5jdHJsLnN1c3BlbmRfdG9faWRsZSA9IGZhbHNl
Owo+PiArCj4+ICsJcmVzdWx0ID0gcGNpX2FsbG9jX2lycV92ZWN0b3JzKHBkZXYsIDEsIDEsIFBD
SV9JUlFfQUxMX1RZUEVTKTsKPj4gKwlpZiAocmVzdWx0IDwgMCkKPj4gKwkJZ290byBvdXQ7Cj4+
ICsKPj4gKwlyZXN1bHQgPSBudm1lX3BjaV9jb25maWd1cmVfYWRtaW5fcXVldWUobmRldik7Cj4+
ICsJaWYgKHJlc3VsdCkKPj4gKwkJZ290byBvdXQ7Cj4+ICsKPj4gKwlyZXN1bHQgPSBudm1lX2Fs
bG9jX2FkbWluX3RhZ3MobmRldik7Cj4+ICsJaWYgKHJlc3VsdCkKPj4gKwkJZ290byBvdXQ7Cj4+
ICsKPj4gKwluZGV2LT5jdHJsLm1heF9od19zZWN0b3JzID0gTlZNRV9NQVhfS0JfU1ogPDwgMTsK
Pj4gKwluZGV2LT5jdHJsLm1heF9zZWdtZW50cyA9IE5WTUVfTUFYX1NFR1M7Cj4+ICsJbXV0ZXhf
dW5sb2NrKCZuZGV2LT5zaHV0ZG93bl9sb2NrKTsKPgo+IFRoaXMgbG9jayB3YXMgbmV2ZXIgbG9j
a2VkLgoKWWVhLCB3aWxsIGZpeCB0aGlzLgoKPgo+IEJ1dCBJIHRoaW5rIHRoZXNlIHNwZWNpYWwg
c3VzcGVuZC9yZXN1bWUgcm91dGluZXMgYXJlIHRvbyBzaW1pbGFyIHRvIHRoZQo+IGV4aXN0aW5n
IG9uZXMsIHRoZXkgc2hvdWxkIGp1c3QgaW5jb3Jwb3JhdGUgdGhpcyBmZWF0dXJlIGlmIHdlIG5l
ZWQgdG8KPiBkbyB0aGlzLgoKVGhhdOKAmXMgbXkgb3JpZ2luYWwgZGlyZWN0aW9uLCBidXQgdGhp
cyByZXF1aXJlcyBhIG5ldyBib29sIHRvICAKbnZtZV9kZXZfZGlzYWJsZSgpLCBzbyBpdCBiZWNv
bWVzCnN0YXRpYyB2b2lkIG52bWVfZGV2X2Rpc2FibGUoc3RydWN0IG52bWVfZGV2ICpkZXYsIGJv
b2wgc2h1dGRvd24sIGJvb2wgIApzdXNwZW5kX3RvX2lkbGUpCgpBbmQgaXQgc3RhcnRzIHRvIGdl
dCBtZXNzeS4KCkthaS1IZW5nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1udm1lCg==
