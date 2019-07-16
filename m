Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596FA69FBB
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 02:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ukCv53sFhO+wzFtiKgtC5JC6wMzHp6nfBlCqxU2TdTs=; b=sVKWZoo7H0YVWvOt7t4UZTkfO
	w1MobPWJBBMvWAPD4dTdBxR65iSz5Us11XfwUlvylSNXPqfG90jIk1Hb+/BYf843Upv4Mpt2pXTsX
	hHHMhYSaCWk+Ke6ukjUcHI7W3eoNeX1TYMx38Cz/SSWzSSzrfP5i/GDnSU4Mye1wPxOX6W947lOt1
	z+MHbiqisGYAk/wAKB4EmQqfSwfC9HENlAs7RhM2YGp/hZCxsuxZvgLyumdTyHqYJKcktJjPxJv/R
	pVq7t1zzs77xv2KpAKhIvfwAIcLhEzKACAgMLwpS0mMiO6RLE4vMK7rpFCJKTmx6jm7YcdI14ytWu
	bBhXssbfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnB4U-0005dE-Gm; Tue, 16 Jul 2019 00:11:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnB4O-0005ce-1X
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 00:11:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so8486845pgj.7
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 17:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4XP87/J+stRoWVQdQLVgPeUmBgGgySIjXuhd5HH21gk=;
 b=aOWvcaDvn0qzr/7GwY3aRbLLjkABWoOY8FQC8iS+Lc+lfVNiEdmGXFUFyiFCr9tC0d
 A7U7BI+l+zX2nHM0P24UpWJ7Le6B0KfJQHpfme9x6ie1SwGd58OUx8FInE6/EasMpvbp
 VuRBs9e/CswZ9jOFEJ8PQ2fXftpaTpOoZKIo/s9YcTYWs3SVGymQLtwLKYlNtdXzSdpW
 lpRIxjzft5f6kEo6gZ+S0dF6ZM04/l2OUJX+T/LQYFN1DTPQI0Qm7D67gk4wQ6hKjhf1
 UjJqVQo84Al3Zed1m1T/qws4rY1fCVvUwXHgdl0NnRskRKGrAfcCZCc4KaG4l6uqL8UX
 uH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4XP87/J+stRoWVQdQLVgPeUmBgGgySIjXuhd5HH21gk=;
 b=DPzwzidsGuI3gYrrUY74mQVUKu5iwVV8ws7EHMhQCV7FWA5Je64fkNyQ+6JaY+T6qI
 t1EfZi5RwqG64LdlECzZ40zbjhsmjvBibojipSw3V1CJUJlkc/H3N5z+1JsUIg8lFP7D
 mlqKPA7Doy8D8V1sG8cpamhj+zcYZWyAwNbe31PoMfqn/bNKuPzsv0qJC3XnYwXpzXhf
 cVbq6SWBc5EQzElgOdzkrP6g4CJrBF3u+1pT0uIBcWizbWjgUuQ+YKwzlvUeAf0GkXtb
 H4r9qXwmVVKEGObpvB9i6SAEL3O/TeVDlt0Hglhl3feY1rZ0sKzfvWGnkerewVZeH5hE
 PLeQ==
X-Gm-Message-State: APjAAAUWBJ8yMANSoANl8x+UTZMxLtMmwigNJnXVdJp/tNBfAIHJiVfe
 66qG34psqRfGzVVEiVuEo8xxnD0u
X-Google-Smtp-Source: APXvYqzrWDRSoWLYbw5WHPAlZds2nRvg1NNVyVIFQnh8YHR4DOm27pOgZEd3JvZUOCOxxpLydPufOQ==
X-Received: by 2002:a63:9c5:: with SMTP id 188mr4648905pgj.2.1563235906435;
 Mon, 15 Jul 2019 17:11:46 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f88sm19625172pjg.5.2019.07.15.17.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 17:11:45 -0700 (PDT)
Subject: Re: [PATCH rfc v2 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-6-jsmart2021@gmail.com>
 <6647e40b-cfc9-46e3-cd11-aeaaec8eeff6@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <721a6054-6e49-0fcb-2928-127470b798f6@gmail.com>
Date: Mon, 15 Jul 2019 17:11:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6647e40b-cfc9-46e3-cd11-aeaaec8eeff6@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_171148_111680_F877ECE2 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xMS8yMDE5IDU6NDcgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+ICtjaGFyICpf
X3BhcnNlX2Nvbm5lY3RfYXJnKGNoYXIgKmNvbmFyZ3MsIGNvbnN0IGNoYXIgZGVsaW0sIGNvbnN0
IGNoYXIgCj4+ICpmaWVsZG5tKQo+PiArewo+PiArwqDCoMKgIGNoYXIgKnMsICplOwo+PiArwqDC
oMKgIHNpemVfdCBjbnQ7Cj4+ICsKPj4gK8KgwqDCoCAvKgo+PiArwqDCoMKgwqAgKiBUaGVyZSBh
cmUgZmllbGQgbmFtZSBvdmVybGFwczogdHJhZGRyIGFuZCBob3N0X3RyYWRkci4KPj4gK8KgwqDC
oMKgICogQnkgY2hhbmNlLCBib3RoIGNvbm5lY3QgYXJnIHN0cmluZ3MgYXJlIHNldCB1cCB0bwo+
PiArwqDCoMKgwqAgKiBoYXZlIHRyYWRkciBmaWVsZCBmb2xsb3dlZCBieSBob3N0X3RyYWRkciBm
aWVsZC4gVGh1cyBmaWVsZAo+PiArwqDCoMKgwqAgKiBuYW1lIG1hdGNoaW5nIGRvZXNuJ3Qgb3Zl
cmxhcCBpbiB0aGUgc2VhcmNoZXMuIFRlY2huaWNhbGx5LAo+PiArwqDCoMKgwqAgKiBhcyBpcywg
dGhlIGxvb3AgYW5kIGRlbGltaXRlciBjaGVja2luZyBpc24ndCBuZWNlc3NhcnkuCj4+ICvCoMKg
wqDCoCAqIEhvd2V2ZXIsIGJldHRlciB0byBiZSBwcmVwYXJlZC4KPj4gK8KgwqDCoMKgICovCj4+
ICvCoMKgwqAgZG8gewo+PiArwqDCoMKgwqDCoMKgwqAgcyA9IHN0cnN0cihjb25hcmdzLCBmaWVs
ZG5tKTsKPiAKPiBBbnkgcmVhc29uIG5vdCB0byB1c2UgdGhlIG5vcm1hbCBzdHJzZXAgZm9yIGxv
b3A/CgpzdHJzZXAgd2Fzbid0IHVzZWQgYXMgSSBkaWRuJ3Qgd2FudCB0byBtb2RpZnkgdGhlIGFy
Z3Mgc3RyaW5nLgoKSSBjb3VsZCBjb252ZXJ0LCBidXQgaXQgbWVhbnMgSSBuZWVkIHRvIGR1cGxp
Y2F0ZSB0aGUgYXJncyBzdHJpbmcgYm90aCAKaW4gZG9fZGlzY292ZXIgYW5kIGluIHRoZSBudm1l
X2N0cmxfbGlzdGl0ZW0gcm91dGluZSBvciBoYXZlIHRoZSBwYXJzZQpyb3V0aW5lIGR1cGxpY2F0
ZSBpdCB0aGVuIHRocm93IGl0IGF3YXkuIFVzaW5nIHN0cnNlcCB3b3VsZCBhbHNvIG1lYW4gSSAK
aGF2ZSB0byBjb250aW51ZSB0byBoYXZlIHRoZSBjaGVjayBmb3IgJz0nIHRva2VuIGFuZCBleHRy
YWN0aW5nIHRoZSAKdmFsdWUuIE5vdCBzdXJlIEkgZ2FpbiBtdWNoIGNvZGUgcmVkdWN0aW9uLgoK
QW55IHByZWZlcmVuY2Ugb3ZlciBsZWF2aW5nIGFzIGlzIG9yIGhhdmluZyB0aGUgcGFyc2Ugcm91
dGluZSBkdXBsaWNhdGUgaXQgPwoKLS0gamFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
