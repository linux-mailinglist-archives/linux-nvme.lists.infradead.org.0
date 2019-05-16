Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4F620D55
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0zUCfaPe54IsBe1UhuDlWPUJ/bbT/x7dI4qdWWrwtM=; b=MarpxxcKWhieO/
	gp5A7q/TZqayrzYZSM6j4bsSsOmLV9L7LoobpWzshjlD3nd8TAfYIR7dVGpR/KaMqq7K0+D9UYACJ
	q5JwFxBRO3a3qtdjunCYW3Hf1Wlm+2qzo5lvkijoay7WthqmKLGE1EWTiwnBOsdDVagZ95L80IvFr
	EbdsMKjismbyIqGNDKHE5P5Xkvk4wZW7T7RACMMfWI4s1FSpqDY41sGFup6M7UNCsS2KJFZiCPv/u
	plOSfOIpJOEgrzsdL2fYWPtCg2awJJlsl68plOyvJYPxyNPBAJRLtrnib2oTvOwcokFhr2l/wNOdf
	ih88vxOnrO428t1id/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJYN-0002hS-54; Thu, 16 May 2019 16:48:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJYI-0002gU-7A
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:48:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so2130605pfa.10
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=xGzOdEjbkXQI4XN5U9fk3ggStqgmR5/EE4ixhly3O2A=;
 b=Bu0Qn4kktWsD3rAV1GUd3JeYgoHJy5Xy55l8u9PsPgiqlneSxFPvzvxLfoLgM89pOW
 1n1Y8ArrxGdys3wg+GHraGMinlicbCuIIFmc3NDk187p7cjfJXyq7Yzy+6kAGsvGTLCC
 D+Ny8OPi8JMucEPU+wI1awvKVfL4KXzEmoziGasIyMtoEKkTMPuHGvqSfD3a/i9Cm3g5
 heZZSZf+vEB7Il04F16l3g2xTH+tgo0hFrZj01evzTu+QvHeRWZJtIKwmgkMfwEsBjha
 H0s2ChNcFMT2IBTDaSxuyyi/YbPFAPtlxvjRPsSIXA+BbELDk3aylFHO3L/9uYnLQQG/
 hCiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=xGzOdEjbkXQI4XN5U9fk3ggStqgmR5/EE4ixhly3O2A=;
 b=UK1tqKx3VjLMh/Hpuk4kXw3LsoqlLGu3r8658u5f1OP9WGDSHEqnZqNCRYafWcGBIL
 nHskTi444Qvm5GUA+ydlVcMQmwiq/XtYwgmEdPNZHOFgRUjYgeeipVGIa8lDCbmPJ8Md
 AXPtAhiHcltcCn6giK4+l7TGuqH6ZhFaf8xz6YMPC6uG1yCoDe0cj70JgucOK+0hfTm/
 WAu2qtMOzwqmjrCD9AmrplgwLFw0TFWKAcUUF6IaulUX7GEotlK4zy9AGoqgh7NWO0mc
 RQjdMd86EgFjmkwzj5vwY9XDxrJRl+rHeGXS2ZaNJk2ie2SFrUs1uUkRnm5ysd5F3Lyn
 Ng6w==
X-Gm-Message-State: APjAAAVXDejaIcpkJOZPOZofIvhV3rmB7Dwg1cj6ShQfasG3XlWqxHTu
 R5/8GOzk+xyuSUpoJDZQfio=
X-Google-Smtp-Source: APXvYqzil0ehZc90CSqN+2Pmtn8vNBmPO90h4w8n8jHTQZYQTOuEdi+W+6QpL8RYioHUuG01uoCPiA==
X-Received: by 2002:a63:9a52:: with SMTP id e18mr50918024pgo.335.1558025297166; 
 Thu, 16 May 2019 09:48:17 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id q193sm9884262pfc.52.2019.05.16.09.48.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 09:48:16 -0700 (PDT)
Date: Fri, 17 May 2019 01:48:13 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Message-ID: <20190516164811.GF24001@minwooim-desktop>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <20190516143212.GE24001@minwooim-desktop>
 <CAC5umyjxxWzCgyMOS=Q7BBBJY+n6xD1dg49fQ0W5okPh58Z1Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyjxxWzCgyMOS=Q7BBBJY+n6xD1dg49fQ0W5okPh58Z1Kw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094818_287112_5837D5CC 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDUtMTcgMDE6MTc6MzEsIEFraW5vYnUgTWl0YSB3cm90ZToKPiAyMDE55bm0NeaciDE2
5pelKOacqCkgMjM6MzIgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT46Cj4gPgo+
ID4gPiArICAgICBpZiAoc2Vuc29yIDwgMCB8fCBzZW5zb3IgPiA4KQo+ID4gPiArICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwo+ID4KPiA+IERvZXMgd2UgcmVhbGx5IG5lZWQgdG8gY2hlY2sg
dGhlIG5lZ2F0aXZlIGNhc2UgaGVyZSA/ICBBbSBJIG1pc3NpbmcKPiA+IHNvbWV0aGluZyBpbiB0
aGlzIGNvbnRleHQgPyAgSWYgd2UgcmVhbGx5IHdhbnQgdG8gY2hlY2sgaXQgaW4gdGhpcwo+ID4g
bGV2ZWwsIGNhbiB3ZSBjaGVjayB0aGUgaW52YWxpZCBjYXNlIGluIHRoZSBmb2xsb3dpbmcgZnVu
Y3Rpb24/Cj4gCj4gVGhlIG5lZ2F0aXZlIGNhc2Ugc2hvdWxkIG5ldmVyIGhhcHBlbiwgc28gaXQg
Y2FuIGJlIGp1c3QgcmVtb3ZlZC4KCkNvb2wuCgo+IAo+ID4gPiArc3RhdGljIHN0cnVjdCB0aGVy
bWFsX3pvbmVfZGV2aWNlICoKPiA+ID4gK252bWVfdGhlcm1hbF96b25lX3JlZ2lzdGVyKHN0cnVj
dCBudm1lX2N0cmwgKmN0cmwsIGludCBzZW5zb3IpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldjsKPiA+ID4gKyAgICAgY2hhciB0eXBlW1RIRVJN
QUxfTkFNRV9MRU5HVEhdOwo+ID4gPiArICAgICBpbnQgcmV0Owo+ID4gPiArCj4gPiA+ICsgICAg
IHNucHJpbnRmKHR5cGUsIHNpemVvZih0eXBlKSwgIm52bWVfdGVtcCVkIiwgc2Vuc29yKTsKPiA+
Cj4gPiBCZWZvcmUgcHJlcGFyaW5nICJudm1lX3RlbXAlZCIsIG1heWJlIHdlIGNhbiBtYWtlIGl0
IHN1cmUgaGVyZS4gOikKPiA+IFdoYXQgZG8geW91IHNheT8KPiAKPiBUaGUgbnZtZV90aGVybWFs
X3pvbmVfcmVnaXN0ZXIoKSBpcyBvbmx5IGNhbGxlZCBmcm9tCj4gbnZtZV90aGVybWFsX3pvbmVz
X3JlZ2lzdGVyKCkgd2hpY2ggaXMgZGVmaW5lZCBqdXN0IGJlbG93LCBhbmQgaXQncyB2ZXJ5Cj4g
Y2xlYXIgdGhhdCB0aGUgdmFsdWUgb2YgJ3NlbnNvcicgaXMgZnJvbSAwIHRvIEFSUkFZX1NJWkUo
Y3RybC0+dHpkZXYpIC0gMS4KCklmIHNvLCB3ZSBkb24ndCBuZWVkIHRvIGNoZWNrIHRoZSBuZWdh
dGl2ZSBjYXNlIGFib3ZlIHRoZXJlLgoKPiAKPiA+ID4gK2ludCBudm1lX3RoZXJtYWxfem9uZXNf
cmVnaXN0ZXIoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiA+ID4gK3sKPiA+ID4gKyAgICAgc3Ry
dWN0IG52bWVfc21hcnRfbG9nICpsb2c7Cj4gPiA+ICsgICAgIGludCByZXQ7Cj4gPiA+ICsgICAg
IGludCBpOwo+ID4gPiArCj4gPiA+ICsgICAgIGxvZyA9IGt6YWxsb2Moc2l6ZW9mKCpsb2cpLCBH
RlBfS0VSTkVMKTsKPiA+ID4gKyAgICAgaWYgKCFsb2cpCj4gPiA+ICsgICAgICAgICAgICAgcmV0
dXJuIC1FTk9NRU07Cj4gPiA+ICsKPiA+ID4gKyAgICAgcmV0ID0gbnZtZV9nZXRfbG9nKGN0cmws
IE5WTUVfTlNJRF9BTEwsIE5WTUVfTE9HX1NNQVJULCAwLAo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgbG9nLCBzaXplb2YoKmxvZyksIDApOwo+ID4gPiArICAgICBpZiAocmV0KSB7Cj4g
PiA+ICsgICAgICAgICAgICAgcmV0ID0gcmV0ID4gMCA/IC1FSU5WQUwgOiByZXQ7Cj4gPiA+ICsg
ICAgICAgICAgICAgZ290byBmcmVlX2xvZzsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsg
ICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGN0cmwtPnR6ZGV2KTsgaSsrKSB7Cj4gPiA+
ICsgICAgICAgICAgICAgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnR6ZGV2Owo+ID4gPiAr
Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKGkgJiYgIWxlMTZfdG9fY3B1KGxvZy0+dGVtcF9zZW5z
b3JbaSAtIDFdKSkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gPiAr
ICAgICAgICAgICAgIGlmIChjdHJsLT50emRldltpXSkKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGNvbnRpbnVlOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgdHpkZXYgPSBudm1lX3Ro
ZXJtYWxfem9uZV9yZWdpc3RlcihjdHJsLCBpKTsKPiA+ID4gKyAgICAgICAgICAgICBpZiAoIUlT
X0VSUih0emRldikpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjdHJsLT50emRldltpXSA9
IHR6ZGV2Owo+ID4KPiA+IFF1ZW5zdGlvbiBoZXJlLiBBcmUgd2Ugb2theSBub3QgdG8gcHJpbnQg
c29tZSB3YXJuaW5ncyBoZXJlIGluIGNhc2UKPiA+IG9mIGVycm9yIHJldHVybmVkPwo+IAo+IEkn
bSBnb2luZyB0byBwcmludCB3YXJuaW5nIGluIGNhc2Ugb2YgdGhlcm1hbF96b25lX2RldmljZV9y
ZWdpc3RlcigpIGVycm9yLgo+IEZvciBzeXNmc19jcmVhdGVfbGluaygpIGVycm9yLCB0aGUgd2Fy
bmluZyBpcyBwcmludGVkIGJ5IHRoZSBmdW5jdGlvbgo+IGl0c2VsZi4KClNvdW5kcyBncmVhdC4K
ClRoYW5rcywKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
