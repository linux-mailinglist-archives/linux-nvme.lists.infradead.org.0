Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03A7312E2
	for <lists+linux-nvme@lfdr.de>; Fri, 31 May 2019 18:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z2KvgthZdj/x9yuhBHKcRfuvh5q7VkSwVw3l+AaxVGo=; b=utdePWPe2KXkvqPBBp1x328Rm
	7myBRFD5Zn9DfSfB8tRRtjUlJ/HMNjjHvbFrgYqtXaKp8PcAyoh5r3xpkZM4iuPtLNVzm4xwe1qTJ
	BvogRi615cjyo6tPAaBTn/jFQEZsMw8NofzdTMsHGEK+DA5+fcV6zXbEJqb+aTP8YZeECoUsNSzsh
	jrwuy1WyMkLMqCWvPh5D9TETK1T6AnFzTtOy2sN/uf2FQ1bJpi7L3rkR3MgESovTVXIZB6BnmuCZR
	ZKNI75uyANFa+pLwLqyaU0XHKCZXVxCDBKnHXa1qC4FrMomgwkT74yKz5lGffLaA6GfxD5qJj+NAK
	jRUO1B2Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkgj-0001W8-HY; Fri, 31 May 2019 16:47:29 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkgb-0001Sr-Fg
 for linux-nvme@lists.infradead.org; Fri, 31 May 2019 16:47:23 +0000
Received: by mail-oi1-f171.google.com with SMTP id b21so4253345oic.8
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 09:47:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i3aQ5Z3BDs0wuMHjxPt/siuNOmlYtyib18hnTz1mqzI=;
 b=SkvenRtY6NBCC+CQMq8YJuKoZ/0pIlq9x1UvAKryYGYABp6xLGshRBB46pO0fKipVz
 weCy0AgoSxCtVGuDV0ToL5jSZU8pqowiGWyEVe+3ARDigMv8kQpbZPRhAIq2R3IythYQ
 FEqFHZtmAYwIx0FwsQKFyuMHmZeGhbPHujh5xmmdQYB6a5GUAwvPhlxyol0/ncJkV8P2
 umcbLS8fDQY4axqcJ86xTdynJT5xxhm8lLUNQJFiCppM3389SPLsn7vZ4GnUGwlEBGdc
 /wJxPgLZ5WuAo6VrPN/65T5XYlFpXD/6TBoY1BaidSTqZZrakXx5gUP0ujnAxUFwkqZ+
 xlTQ==
X-Gm-Message-State: APjAAAUdVh0+vDv1fJ7M0IdtR93aeNqfhqCxb/8XGyhJXZER9+jv4+Yi
 BGV0kqr5NTJQ41/wwbqOCbFbnSCE
X-Google-Smtp-Source: APXvYqz4mPJ++bSFQkMfXa1X4M0CuvtYxr+FtysWikao56D78xAsDXaE/Hxe/NVevFROFJxwXPYOew==
X-Received: by 2002:aca:b955:: with SMTP id j82mr6866143oif.62.1559321239790; 
 Fri, 31 May 2019 09:47:19 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 63sm2562424ota.28.2019.05.31.09.47.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 09:47:19 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: James Smart <james.smart@broadcom.com>,
 John Donnelly <john.p.donnelly@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
 <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
 <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <23ef6a83-e6d0-e870-d68e-2f891c5aec8f@grimberg.me>
Date: Fri, 31 May 2019 09:47:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_094721_524044_47ABD7EF 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gdG9vIG1hbnkgbGVhcHMgYW5kIGJvdW5kcyBhcmUgYmVpbmcgc3RhdGVkIHdoZW4gdGhlIGJh
c2Ugc291cmNlcyBhcmVuJ3QgCj4gY29uc2lzdGVudC7CoMKgIFRoaW5ncyB3b3JrIHdoZW4gYWxs
IHRoZSBkZXBlbmRlbmNpZXMgYXJlIHB1dCB0b2dldGhlci4gCj4gV2hlbiBiaXRzIGFyZSBjaGVy
cnkgcGlja2VkIC0gaXQncyBhIGIqIyVAIHRvIGZpZ3VyZSBvdXQgd2hpY2ggcGllY2UgaXMgCj4g
bWlzc2luZyB0byBnZXQgZXZlcnl0aGluZyB3b3JraW5nIHRvZ2V0aGVyLgoKCkRpZG4ndCByZWFs
aXplIHRoYXQgdGhpcyB3YXMgbm90IHVwc3RyZWFtIHRlc3RlZC4uIFNvIGluIHVwc3RyZWFtIHdl
IGFyZQpnb29kPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
