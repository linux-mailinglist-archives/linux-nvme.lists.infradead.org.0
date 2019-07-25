Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCC074FAB
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUoBNdiWQ0HmHaXUBrvVcoKDNfeDAydL7j3VA7/2xso=; b=IG6JCYJbziwWxE
	46MOVK+iFim8BxqLPA4mfopYkpMo6KJry69zFSGzXx5m1f2vMOaI001QtnAAhMlEvJaQIX3LWZyJ5
	ReCbKvmAcXuR8E1pbo5YDl256FRKlo1cwBP5zpGU0gvc/PLExbBeX1+CTvhQvfVGuqIx3UXZ77QeB
	VlP5ztXzcbEIkhbyY+Rk06PYhvPz2wRtGBQeY/wphER7P2z0PppcoTFutP+9AjijLQUf7MHou8JjM
	wC6riK2lx6ueiDCbm1HrxRMBD1DfKavnqaUA4X81hIs3xGM5XYHGgVggEZDAfDc0zD1cwbBH4ysED
	ofvG0rSsPSQeTpiei3mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdwI-0007Qr-Ls; Thu, 25 Jul 2019 13:37:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdwB-0007QY-LS
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:37:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so16453865pld.10
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=1QmUPEk1ToMPpIDR/tmnsCHdToIGsf8AR3XZIrCM770=;
 b=looY0AqshMwIw35u5y6vRBUdSNoTG0Irx6av0ykE7XrC2VBZb1IJKAV5lGXS8wzX9a
 1TmUaNXVcw3HFSxLhKvmriFyCAJ8PTYXsKCwBCqD88tGP54AbegWtmzI2KhEH39mKbU+
 dmff9qZTGHLpjhevShzcVmG00MbbXLYhJtSvU5Zcb0ywBkM1jvjdBORHPMUAU7Fmlhvn
 Ek1mBoTqA3mI5mf3kHsW/r9kTAIrTV130QYr2Fz5rZ6IqzxDpYec8YGCTvjsysyPZhfW
 KHchAaqp8vdNZm3LEgc0YQhjGIo/wdT0B6zNLScc1kPmRnxkBBZdCQtEn89vmAkPXTTc
 GN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1QmUPEk1ToMPpIDR/tmnsCHdToIGsf8AR3XZIrCM770=;
 b=SnELPXQtRSsZKwEhiONOAcd+IcT0ilyeR5EuxEqBI1JebCSYlelWnsOFC+XcDZV5uc
 cUR+obQD8OFDtDWY3m/BaR827ZF8tQYuCvEWIbwLYBhYKVdbtFljEU5idTfaaGWLER2g
 CmuRw8DK6vn4zD91iN69puHqxFvBilHddJol7Ry7k4nWZFKd+NcSbeA7tYiF9OA5geU5
 mUbx5itXG6dn4UGHEPOS0FPHx4DITYhE5LmVHW73i0nG8FnP2u4F/AeZh0U5JEN5O9bm
 Ys9fuTo0idKkZ/cLlaZ3glaATSSF737yE/ldh+TChpBx8SNcHvumw3BaWfGmXp0cgzGs
 cHEQ==
X-Gm-Message-State: APjAAAXiCh0cVbS0bhmNLmzkYKCa2hi0buaZd2P9riwKaoNrPbwstAEh
 DfQzTRUWm85A/zkG2DWB7uCElPdhChs=
X-Google-Smtp-Source: APXvYqykLnc2xtDqd89N+yV/jn0iYYeLs/ml3ggNdSi7UsB3Jm7vOKM6jiW39eHei57BHrQhMAy8sw==
X-Received: by 2002:a17:902:8ec7:: with SMTP id
 x7mr89863182plo.224.1564061859080; 
 Thu, 25 Jul 2019 06:37:39 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i123sm68272370pfe.147.2019.07.25.06.37.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:37:38 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:37:36 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Message-ID: <20190725133736.GB3018@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <20B9C888-532C-4762-9886-8C5E196CB5A4@javigon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20B9C888-532C-4762-9886-8C5E196CB5A4@javigon.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_063739_701369_ABB84E3E 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>,
 Klaus Birkelund Jensen <birkelund@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgSmF2aWVyLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiA+ICtpbnQgbG52bV9kb19jaHVu
a19sb2coaW50IGZkLCBfX3UzMiBuc2lkLCBfX3UzMiBkYXRhX2xlbiwgdm9pZCAqZGF0YSwKPiA+
ICsJCQl1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gPiArewo+ID4gKwlpbnQgZXJyOwo+ID4gKwo+ID4g
KwllcnIgPSBudm1lX2dldF9sb2cxMyhmZCwgbnNpZCwgTlZNX0xJRF9DSFVOS19JTkZPLCAwLCAw
LCAwLAo+ID4gKwkJCWZhbHNlLCBkYXRhX2xlbiwgZGF0YSk7Cj4gPiArCWlmICghZXJyKSB7Cj4g
PiArCQlpZiAoZmxhZ3MgJiBSQVcpCj4gPiArCQkJZF9yYXcoZGF0YSwgZGF0YV9sZW4pOwo+ID4g
KwkJZWxzZQo+ID4gKwkJCXNob3dfbG52bV9jaHVua19sb2coZGF0YSwgZGF0YV9sZW4pOwo+ID4g
Kwl9IGVsc2UgaWYgKGVyciA+IDApCj4gPiArCQlmcHJpbnRmKHN0ZGVyciwgIk5WTWUgU3RhdHVz
OiVzKCV4KSBOU0lEOiVkXG4iLAo+ID4gKwkJCW52bWVfc3RhdHVzX3RvX3N0cmluZyhlcnIpLCBl
cnIsIG5zaWQpOwo+ID4gKwlyZXR1cm4gZXJyOwo+IAo+IFdoYXQgYWJvdXQgYXZvaWRpbmcgdGhl
IG5lc3RlZCBpZj8KPiAKPiBJZiAoZXJyKSB7Cj4gCWZwcmludGYoc3RkZXJyLCAiTlZNZSBTdGF0
dXM6JXMoJXgpIE5TSUQ6JWRcbiIsCj4gCQkJbnZtZV9zdGF0dXNfdG9fc3RyaW5nKGVyciksIGVy
ciwgbnNpZCk7Cj4gCj4gCWdvdG8gb3V0Owo+IH0KPiAKPiBJZiAoZmxhZ3MgJiBSQVcpCj4gCWRf
cmF3KGRhdGEsIGRhdGFfbGVuKTsKPiBlbHNlCj4gCXNob3dfbG52bV9jaHVua19sb2coZGF0YSwg
ZGF0YV9sZW4pOwo+IAo+IG91dDoKPiByZXR1cm4gZXJyOwoKVGhhdCBtYWtlcyBzZW5zZSwgd2Ug
c2hvdWxkIGF2b2lkIHRoZSBjYXNlIHdoZW4gImVyciIgaXMgbmVnYXRpdmUgdmFsdWUKd2hpY2gg
bWVhbnMgdGhlIGludGVybmFsIGVycm9yIGZyb20gdGhlIG52bWVfZ2V0X2xvZzEzKCkgaW4gcHJp
bnRpbmcgdGhlCm52bWUgc3RhdHVzLiAgU28gaG93IGFib3V0IHRoaXM/CgpgYGBjCglpZiAoZXJy
ID4gMCkgewoJCWZwcmludGYoc3RkZXJyLCAiTlZNZSBTdGF0dXM6JXMoJXgpIE5TSUQ6JWRcbiIs
CgkJCW52bWVfc3RhdHVzX3RvX3N0cmluZyhlcnIpLCBlcnIsIG5zaWQpOwoKCQlnb3RvIG91dDsK
CX0gZWxzZSBpZiAoZXJyIDwgMCkgewoJCWVyciA9IC1lcnJubzsKCQlwZXJyb3IoIm52bWVfZ2V0
X2xvZzEzIik7CgoJCWdvdG8gb3V0OwoJfQoKCWlmIChmbGFncyAmIFJBVykKCQlkX3JhdyhkYXRh
LCBkYXRhX2xlbik7CgllbHNlCgkJc2hvd19sbnZtX2NodW5rX2xvZyhkYXRhLCBkYXRhX2xlbik7
CgpvdXQ6CglyZXR1cm4gZXJyOwpgYGAKCj4gPiArfQo+ID4gKwo+ID4gc3RhdGljIHZvaWQgc2hv
d19sbnZtX2JidGJsKHN0cnVjdCBudm1lX252bV9iYl90YmwgKnRibCkKPiA+IHsKPiA+IAlwcmlu
dGYoInZlcmlkICAgIDogJSN4XG4iLCAodWludDE2X3QpbGUxNl90b19jcHUodGJsLT52ZXJpZCkp
Owo+ID4gZGlmZiAtLWdpdCBhL252bWUtbGlnaHRudm0uaCBiL252bWUtbGlnaHRudm0uaAo+ID4g
aW5kZXggN2E4ZWY3ZC4uMTk2NjBiNyAxMDA2NDQKPiA+IC0tLSBhL252bWUtbGlnaHRudm0uaAo+
ID4gKysrIGIvbnZtZS1saWdodG52bS5oCj4gPiBAQCAtMzIyLDYgKzMyMiw3IEBAIGludCBsbnZt
X2RvX2NyZWF0ZV90Z3QoY2hhciAqLCBjaGFyICosIGNoYXIgKiwgaW50LCBpbnQsIGludCwgaW50
KTsKPiA+IGludCBsbnZtX2RvX3JlbW92ZV90Z3QoY2hhciAqKTsKPiA+IGludCBsbnZtX2RvX2Zh
Y3RvcnlfaW5pdChjaGFyICosIGludCwgaW50LCBpbnQpOwo+ID4gaW50IGxudm1fZG9faWRfbnMo
aW50LCBpbnQsIHVuc2lnbmVkIGludCk7Cj4gPiAraW50IGxudm1fZG9fY2h1bmtfbG9nKGludCwg
X191MzIsIF9fdTMyLCB2b2lkICosIHVuc2lnbmVkIGludCk7Cj4gPiBpbnQgbG52bV9kb19nZXRf
YmJ0YmwoaW50LCBpbnQsIGludCwgaW50LCB1bnNpZ25lZCBpbnQpOwo+ID4gaW50IGxudm1fZG9f
c2V0X2JidGJsKGludCwgaW50LCBpbnQsIGludCwgaW50LCBpbnQsIF9fdTgpOwo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5jIGIvcGx1Z2lucy9sbnZtL2xudm0t
bnZtZS5jCj4gPiBpbmRleCA3NTQ5MzFhLi42ZjI3MjRhIDEwMDY0NAo+ID4gLS0tIGEvcGx1Z2lu
cy9sbnZtL2xudm0tbnZtZS5jCj4gPiArKysgYi9wbHVnaW5zL2xudm0vbG52bS1udm1lLmMKPiA+
IEBAIC0xLDUgKzEsNyBAQAo+ID4gI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gPiAjaW5jbHVkZSA8ZXJy
bm8uaD4KPiA+ICsjaW5jbHVkZSA8c3RkbGliLmg+Cj4gPiArI2luY2x1ZGUgPHVuaXN0ZC5oPgo+
ID4gCj4gPiAjaW5jbHVkZSAibnZtZS5oIgo+ID4gI2luY2x1ZGUgIm52bWUtcHJpbnQuaCIKPiA+
IEBAIC0xMjcsNiArMTI5LDg4IEBAIHN0YXRpYyBpbnQgbG52bV9pZF9ucyhpbnQgYXJnYywgY2hh
ciAqKmFyZ3YsIHN0cnVjdCBjb21tYW5kICpjbWQsIHN0cnVjdCBwbHVnaW4KPiA+IAlyZXR1cm4g
bG52bV9kb19pZF9ucyhmZCwgY2ZnLm5hbWVzcGFjZV9pZCwgZmxhZ3MpOwo+ID4gfQo+ID4gCj4g
PiArc3RhdGljIGludCBsbnZtX2NodW5rX2xvZyhpbnQgYXJnYywgY2hhciAqKmFyZ3YsIHN0cnVj
dCBjb21tYW5kICpjbWQsIHN0cnVjdCBwbHVnaW4gKnBsdWdpbikKPiA+ICt7Cj4gPiArCWNvbnN0
IGNoYXIgKmRlc2MgPSAiUmV0cmlldmUgdGhlIGNodW5rIGluZm9ybWF0aW9uIGxvZyBmb3IgdGhl
ICJcCj4gPiArCQkic3BlY2lmaWVkIGdpdmVuIExpZ2h0TlZNIGRldmljZSwgcmV0dXJucyBpbiBl
aXRoZXIgIlwKPiA+ICsJCSJodW1hbi1yZWFkYWJsZSBvciBiaW5hcnkgZm9ybWF0LlxuIlwKPiA+
ICsJCSJUaGlzIHdpbGwgcmVxdWVzdCBHZW9tZXRyeSBmaXJzdCB0byBnZXQgdGhlICJcCj4gPiAr
CQkibnVtX2dycCxudW1fcHUsbnVtX2NoayBmaXJzdCB0byBmaWd1cmUgb3V0IHRoZSB0b3RhbCBz
aXplICJcCj4gPiArCQkib2YgdGhlIGxvZyBwYWdlcy4iXAo+ID4gKwkJOwo+ID4gKwljb25zdCBj
aGFyICpvdXRwdXRfZm9ybWF0ID0gIk91dHB1dCBmb3JtYXQ6IG5vcm1hbHxiaW5hcnnigJ07Cj4g
Cj4gbm9ybWFsYmluYXJ5IC0+IG5vcm1hbCBiaW5hcnk/CgpPaCBJdCBoYXMgInwiIGJldHdlZW4g
dGhlbS4gIEJ1dCBJJ20gZmluZSB3aXRoIHRoYXQgdG9vLiAgSXQgd2FzIGp1c3QKZGVyaWV2ZWQg
ZnJvbSB0aGUgbnZtZS5jIGNvcmUgbW9kdWxlIHdoaWNoIGJ1aWx0aW4gY29tbWFuZHMgYXJlIHRh
a2luZwpub3cuCgo+ID4gKwljb25zdCBjaGFyICpodW1hbl9yZWFkYWJsZSA9ICJQcmludCBub3Jt
YWwgaW4gcmVhZGFibGUgZm9ybWF0IjsKPiA+ICsJaW50IGVyciwgZm10LCBmZDsKPiA+ICsJc3Ry
dWN0IG52bWVfbnZtX2lkMjAgZ2VvOwo+ID4gKwlzdHJ1Y3QgbnZtZV9udm1fY2h1bmtfZGVzYyAq
Y2h1bmtfbG9nOwo+ID4gKwlfX3UzMiBuc2lkOwo+ID4gKwlfX3UzMiBkYXRhX2xlbjsKPiA+ICsJ
dW5zaWduZWQgaW50IGZsYWdzID0gMDsKPiA+ICsKPiA+ICsJc3RydWN0IGNvbmZpZyB7Cj4gPiAr
CQljaGFyICpvdXRwdXRfZm9ybWF0Owo+ID4gKwkJaW50IGh1bWFuX3JlYWRhYmxlOwo+ID4gKwl9
Owo+ID4gKwo+ID4gKwlzdHJ1Y3QgY29uZmlnIGNmZyA9IHsKPiA+ICsJCS5vdXRwdXRfZm9ybWF0
ID0gIm5vcm1hbCIsCj4gPiArCX07Cj4gPiArCj4gPiArCWNvbnN0IHN0cnVjdCBhcmdjb25maWdf
Y29tbWFuZGxpbmVfb3B0aW9ucyBjb21tYW5kX2xpbmVfb3B0aW9uc1tdID0gewo+ID4gKwkJeyJv
dXRwdXQtZm9ybWF0IiwgJ28nLCAiRk1UIiwgQ0ZHX1NUUklORywgJmNmZy5vdXRwdXRfZm9ybWF0
LCByZXF1aXJlZF9hcmd1bWVudCwgb3V0cHV0X2Zvcm1hdH0sCj4gPiArCQl7Imh1bWFuLXJlYWRh
YmxlIiwnSCcsICIiLCAgICBDRkdfTk9ORSwgICAmY2ZnLmh1bWFuX3JlYWRhYmxlLG5vX2FyZ3Vt
ZW50LCAgICAgICBodW1hbl9yZWFkYWJsZX0sCj4gPiArCQl7TlVMTH0KPiA+ICsJfTsKPiA+ICsK
PiA+ICsJZmQgPSBwYXJzZV9hbmRfb3BlbihhcmdjLCBhcmd2LCBkZXNjLCBjb21tYW5kX2xpbmVf
b3B0aW9ucywgJmNmZywKPiA+ICsJCQkJc2l6ZW9mKGNmZykpOwo+ID4gKwlpZiAoZmQgPCAwKSB7
Cj4gPiArCQllcnIgPSBmZDsKPiA+ICsJCWdvdG8gcmV0Owo+ID4gKwl9Cj4gCj4gcmV0dXJuIGZk
OwoKVGhpcyBpcyBhYnNvbHV0ZWx5IG5vIG5lZWQgdG8gc2V0IHRoZSAiZXJyIiB2YWx1ZSBpbiB0
aGlzIHN0ZXAuICBXaWxsCnVwZGF0ZS4KCj4gCj4gPiArCj4gPiArCWZtdCA9IHZhbGlkYXRlX291
dHB1dF9mb3JtYXQoY2ZnLm91dHB1dF9mb3JtYXQpOwo+ID4gKwlpZiAoZm10IDwgMCkgewo+ID4g
KwkJZXJyID0gZm10Owo+ID4gKwkJZ290byBjbG9zZTsKPiA+ICsJfQo+ID4gKwo+ID4gKwlpZiAo
Zm10ID09IEJJTkFSWSkKPiA+ICsJCWZsYWdzIHw9IFJBVzsKPiA+ICsJZWxzZSBpZiAoY2ZnLmh1
bWFuX3JlYWRhYmxlKQo+ID4gKwkJZmxhZ3MgfD0gSFVNQU47Cj4gPiArCj4gPiArCW5zaWQgPSBu
dm1lX2dldF9uc2lkKGZkKTsKPiA+ICsKPiA+ICsJLyoKPiA+ICsJICogSXQgbmVlZHMgdG8gZmln
dXJlIG91dCBob3cgbWFueSBieXRlcyB3aWxsIGJlIHJlcXVlc3RlZCBieSB0aGlzCj4gPiArCSAq
IHN1YmNvbW1hbmQgYnkgdGhlIChudW1fZ3JwICogbnVtX3B1ICogbnVtX2NoaykgZnJvbSB0aGUg
R2VvbWV0cnkuCj4gPiArCSAqLwo+ID4gKwllcnIgPSBsbnZtX2dldF9pZGVudGl0eShmZCwgbnNp
ZCwgKHN0cnVjdCBudm1lX252bV9pZCAqKSAmZ2VvKTsKPiA+ICsJaWYgKGVycikKPiA+ICsJCWdv
dG8gY2xvc2U7Cj4gPiArCj4gPiArCWRhdGFfbGVuID0gKGdlby5udW1fZ3JwICogZ2VvLm51bV9w
dSAqIGdlby5udW1fY2hrKSAqCj4gPiArCQkJc2l6ZW9mKHN0cnVjdCBudm1lX252bV9jaHVua19k
ZXNjKTsKPiA+ICsJY2h1bmtfbG9nID0gbWFsbG9jKGRhdGFfbGVuKTsKPiA+ICsJaWYgKCFjaHVu
a19sb2cpIHsKPiA+ICsJCWZwcmludGYoc3RkZXJyLCAiY291bmQgbm90IGFsbG9jIGZvciBjaHVu
ayBsb2cgJWRieXRlc1xuIiwKPiA+ICsJCQkJZGF0YV9sZW4pOwo+ID4gKwkJZXJyID0gLUVOT01F
TTsKPiA+ICsJCWdvdG8gY2xvc2U7Cj4gPiArCX0KPiA+ICsKPiA+ICsJZXJyID0gbG52bV9kb19j
aHVua19sb2coZmQsIG5zaWQsIGRhdGFfbGVuLCBjaHVua19sb2csIGZsYWdzKTsKPiA+ICsJaWYg
KGVycikKPiA+ICsJCWZwcmludGYoc3RkZXJyLCAiZ2V0IGxvZyBwYWdlIGZvciBjaHVuayBpbmZv
cm1hdGlvbiBmYWlsZWRcbiIpOwo+ID4gKwo+ID4gKwlmcmVlKGNodW5rX2xvZyk7Cj4gPiArY2xv
c2U6Cj4gPiArCWNsb3NlKGZkKTsKPiA+ICtyZXQ6Cj4gPiArCXJldHVybiBlcnI7Cj4gPiArfQo+
ID4gKwo+ID4gc3RhdGljIGludCBsbnZtX2NyZWF0ZV90Z3QoaW50IGFyZ2MsIGNoYXIgKiphcmd2
LCBzdHJ1Y3QgY29tbWFuZCAqY21kLCBzdHJ1Y3QgcGx1Z2luICpwbHVnaW4pCj4gPiB7Cj4gPiAJ
Y29uc3QgY2hhciAqZGVzYyA9ICJJbnN0YW50aWF0ZSBhIHRhcmdldCBvbiB0b3Agb2YgYSBMaWdo
dE5WTSBlbmFibGVkIGRldmljZS4iOwo+ID4gZGlmZiAtLWdpdCBhL3BsdWdpbnMvbG52bS9sbnZt
LW52bWUuaCBiL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaAo+ID4gaW5kZXggM2Q1Y2JjNS4uZjA5
MWY3YiAxMDA2NDQKPiA+IC0tLSBhL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaAo+ID4gKysrIGIv
cGx1Z2lucy9sbnZtL2xudm0tbnZtZS5oCj4gPiBAQCAtMTIsNiArMTIsNyBAQCBQTFVHSU4oTkFN
RSgibG52bSIsICJMaWdodE5WTSBzcGVjaWZpYyBleHRlbnNpb25zIiksCj4gPiAJCUVOVFJZKCJs
aXN0IiwgIkxpc3QgYXZhaWxhYmxlIExpZ2h0TlZNIGRldmljZXMiLCBsbnZtX2xpc3QpCj4gPiAJ
CUVOVFJZKCJpbmZvIiwgIkxpc3QgZ2VuZXJhbCBpbmZvcm1hdGlvbiBhbmQgYXZhaWxhYmxlIHRh
cmdldCBlbmdpbmVzIiwgbG52bV9pbmZvKQo+ID4gCQlFTlRSWSgiaWQtbnMiLCAiTGlzdCBnZW9t
ZXRyeSBmb3IgTGlnaHROVk0gZGV2aWNlIiwgbG52bV9pZF9ucykKPiA+ICsJCUVOVFJZKCJjaHVu
ay1sb2ciLCAiQ2h1bmsgaW5mb3JtYXRpb24gYnkgR2V0IExvZyBQYWdlIiwgbG52bV9jaHVua19s
b2cpCj4gPiAJCUVOVFJZKCJpbml0IiwgIkluaXRpYWxpemUgbWVkaWEgbWFuYWdlciBvbiBMaWdo
dE5WTSBkZXZpY2UiLCBsbnZtX2luaXQpCj4gPiAJCUVOVFJZKCJjcmVhdGUiLCAiQ3JlYXRlIHRh
cmdldCBvbiB0b3Agb2YgYSBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2NyZWF0ZV90Z3QpCj4gPiAJ
CUVOVFJZKCJyZW1vdmUiLCAiUmVtb3ZlIHRhcmdldCBmcm9tIGRldmljZSIsIGxudm1fcmVtb3Zl
X3RndCkKPiA+IC0tCj4gPiAyLjE3LjEKPiAKPiBXZSBoYXZlIHR5cGljYWxseSByZXRyaWV2ZWQg
dGhpcyBkaXJlY3RseSB1c2luZyBwYXNzdGhydSBjb21tYW5kcywgYnV0IEkKPiBoYXZlIG5vdGhp
bmcgYWdhaW5zdCBtYWtpbmcgdGhpcyBhIGRlZGljYXRlZCBsbnZtIGNvbW1hbmQuCgpUaGFua3Mg
Zm9yIGxldHRpbmcgbWUga25vdy4gIEkgd2FzIGp1c3QgdHJ5aW5nIHRvIHByb3ZpZGUgYSBkZWRp
Y2F0ZWQKY29tbWFuZCBqdXN0IGxpa2UgdGhlIGJ1aWx0LWluIGNvbW1hbmRzIGxpa2UgZnctbG9n
IGFuZCBldGMuCgpUaGFua3MgZm9yIHRoZSBhbGwgdGhlc2Uga2luZGx5IHJldmlldyEgIEkgd2ls
bCBwcmVwYXJlIHRoZSBuZXh0IHZlcnNpb24Kd2l0aCB0aGVzZSBwb2ludHMuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
