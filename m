Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC9B2D56D
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 08:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=giS5EZQVm/qVNtWoS7I68L+8P4s4j7lG8T8mFGGBnVU=; b=ONX+UEhsQf3Izb6RYiLzLe1Ts
	KptlFuDGvFlmakVLU2IMY0EyswaJ+zoVQB9yRibhMMglwpMlmriliMfEL0E5f91HVBIhKMDIQGLVe
	IaW8+t3OfNiB9One357cgGfujIdRu3yLFacUDUb0ZbxTHwBFxUkceRO5wMa/7BQ0aONL2PCZc1Q0j
	3TT21EIscXHZ3Oaibhech83c34oYQfN4Z1L93BQS3YMKL9YDd9LUrhcGX7v8NZjfqfwnv55sUkL4/
	kjEq8iGWOuAXc1Z9kQNVnmMYyJTGYwN6mPyom+pe0s9xNO9syZeF6OwIeERhDuxD647Ea4ViY4XrM
	Bk6wWraaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVryS-00012s-Mw; Wed, 29 May 2019 06:22:08 +0000
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVryN-00012W-Ir
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 06:22:04 +0000
Received: by mail-pl1-f172.google.com with SMTP id f97so605690plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 23:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yReItZ4W4ByXDke8eAET3eU3p9DIvSgTozjykPaYQmU=;
 b=Ap4Sz9tg8gDBu7UbMsQY2KVhrCOs2bQdj4gVqSEP3Ptb7XiJmvgIa4ClUrtDQ5QmFB
 oCgXOAj8sYYYWp5zDqjXj+lJiL3pmc+QV8Wh0WSugwuuobsiiNGo+HxBpjvfhSzZermB
 u7wB4+A7llPpSavgj5vXktgzA3l2B7+dcb7TbDaFuQOBKzN7Q1hnOVxUduyznU1V+2vX
 Kw0UAo8V5opJhilfAMNiGzN5f+GG0IwOyu7P8kWUukbiK1tSRe3Q6SWfB30NDOi7QFki
 WD0OV19WIcTqiMrwAMnnmnEFP6EpLD1G4P7xhCbCTrq9/znpB/kvOt/OB6FhG6rdxUbs
 sJpw==
X-Gm-Message-State: APjAAAU2iPsBDiVBaqnTUxZROGaL61mI6c25/77sLbyOEs0WnyS3XQo9
 Qhxs5w0H1iDMxyDi/2vT5GjBlEkwcr8=
X-Google-Smtp-Source: APXvYqwmewa5xMIMleyoHxpEzQpRDBDxpqd9hO6PW6VIuB8w0j8GAXL1C+mdUizAJk+R4NtZnBBceg==
X-Received: by 2002:a17:902:bcc9:: with SMTP id
 o9mr3782015pls.219.1559110922224; 
 Tue, 28 May 2019 23:22:02 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id u1sm16406357pfh.85.2019.05.28.23.22.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 23:22:01 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: John Donnelly <john.p.donnelly@oracle.com>, linux-nvme@lists.infradead.org
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
Date: Tue, 28 May 2019 23:22:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_232203_624177_3346A1F5 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gICAgSXQgYXBwZWFycyB0byBtZSB0aGUgY2FsbGVyIG52bWVfZnJlZV9jdHJsKCkgIGlzIHVz
aW5nIGEgZGV2aWNlIG5hbWUgdGhhdCBoYXMgYmVlbiBjbGVhcmVkIDoKPiAKPiAgICAgIHN5c2Zz
X3JlbW92ZV9saW5rKCZzdWJzeXMtPmRldi5rb2JqLCBkZXZfbmFtZShjdHJsLT5kZXZpY2UpKTsK
PiAKPiAKPiBUaGUgbmFtZSBwYXNzZWQgaW4gaXMgbnVsbCBpbiBrZXJuZnNfcmVtb3ZlX2J5X25h
bWVfbnMoKSA6Cj4gCj4gCj4gICBpZiAoIXBhcmVudCkgewo+ICAgICBXQVJOKDEsIEtFUk5fV0FS
TklORyAia2VybmZzOiBjYW4gbm90IHJlbW92ZSAnJXMnLCBubyBkaXJlY3RvcnlcbiIsICAgbmFt
ZSk7CgpXaGVyZSBkbyB5b3Ugc2VlIHRoaXMgd2FybmluZyBpbiB0aGUgbG9nPwoKPiBJIGRvbuKA
mXQgaGF2ZSBhIGFjdHVhbCBjcmFzaCBkdW1wIHRvIGV4YW1pbmUgdGhvdWdoLgoKSXMgdGhpcyBh
IHJlZ3Jlc3Npb24gdGhlbj8gb3IgZGlkIHRoaXMgbm90IHdvcmsgYmVmb3JlIHRoZSBhYm92ZQpw
YXRjaGVzPwoKV291bGQgaXQgYmUgcG9zc2libGUgdG8gZ2V0IHNvbWUgbW9yZSBvZiB0aGUgbG9n
PwoKQWxzbywgSSBzZWUgdGhhdCB0aGlzIGlzIHRoZSByZW1vdmFsIGZsb3csIHdhcyB0aGF0IGlu
dGVudGlvbmFsCnJlbW92YWwgZHVyaW5nIHRoZSByZWNvbm5lY3Q/IG9yIGRpZCBjdHJsX2xvc3Nf
dG1vIGV4cGlyZWQ/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
