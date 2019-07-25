Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC187584C
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tb7zwNHpKAAebBArKCW4N2EGGy0hLlBGYUODblBhM08=; b=g2/gEKHFELqVVIi3GivUEWeY8
	oaM3lx/eLzowBFJkwAyLdrv4kiHSAjAfpV1o3heoIgcKM5M09z0y9SEwg3jUajawzHngeAZDj6kQF
	gqvoY3YX+ALYpkdYU7DbE8tSCn6gtfyVyS0L2i1XqizMPg8dwbI6ScyWfsZoOeKmaHqJa5XjOOFzQ
	cnoU7kMMZgaa++oyUswF4pwGI+zBYm9t8R0tUExT7QqRDHTo6YuS3Y6tmZb03Rd+8DM3EqZHm2aaA
	Z+tCKnSU4toGhkUshECOAWflr6ig/3RNwQ7IRYIMohuaGjhu0OHInYkwegg+c6CKGyTH66wjnOO+2
	2tVEfIsDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjgG-0004Xe-VB; Thu, 25 Jul 2019 19:45:37 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjeK-0001qJ-Ti
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:43:40 +0000
Received: by mail-ot1-f65.google.com with SMTP id r6so52886670oti.3
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AB7k73A/9o/kiEuhYTJZDvvpmb5gQLdNw/V/UVLUe8w=;
 b=YyPvPdJusDWilyYf3ol720htWjVIb4vj4rl5q/DjNdWgB0b1VF4Oyg6FdnmZLunxd3
 4eySnG013y26J3tWKKhZ18Dclfro12o3yO05RJaPAVOwPKmRn1vawwICJGGV9eDtWIcO
 dVJ9gj4gKjDSQZGKMbV3zhl9OPDQLyN2j/k5nm1Q/pdG8Sh4hK7l68TMKqlIPiNfYhuw
 5BE07Iqe0ehVnbyyiIER+mPibX0jqMwhr9Jtzk4woSLtJYb8aOxfd0kPbgtnQB+ojEuc
 XsCKHj1UsBJXtl6LoofYcXu2P0GBvbit3ekaugycMEkHD540AO1fPyf5vdSg+R3sZKGY
 FjLQ==
X-Gm-Message-State: APjAAAXZK4DHBN7m9JfjghIqGgRsrnwlxi6+v5oyxOTv2hzmSojof3gF
 uu269MFbILWfj96oypbflnU=
X-Google-Smtp-Source: APXvYqz9WGa4zv/OdhNOHzYyvqVyo1EtCgdTXwKr/MVzBRdy4TVgCb4zZfHmx5oJ+u/1wTmK8XpwHA==
X-Received: by 2002:a9d:6195:: with SMTP id g21mr34812081otk.103.1564083815719; 
 Thu, 25 Jul 2019 12:43:35 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l12sm16886495otp.74.2019.07.25.12.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:43:35 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
From: Sagi Grimberg <sagi@grimberg.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
 <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
 <20190725193415.GA12117@kroah.com>
 <966fa988-de56-effe-dd52-3515ee83629c@grimberg.me>
Message-ID: <af960e70-7373-51f2-3ff3-f23335f94aa1@grimberg.me>
Date: Thu, 25 Jul 2019 12:43:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <966fa988-de56-effe-dd52-3515ee83629c@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124337_032451_27BBAA09 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IFNvLCBhcyB3YXMga2luZCBvZiBhbGx1ZGVkIHRvIGluIGFub3RoZXIgcGFydCBvZiB0aGUg
dGhyZWFkLCB3aGF0IGFyZQo+PiB5b3UgZG9pbmcgYWJvdXQgcGVybWlzc2lvbnM/wqAgSXQgc2Vl
bXMgdGhhdCBhbnkgdXNlci9ncm91cCBwZXJtaXNzaW9ucwo+PiBhcmUgb3V0IHRoZSB3aW5kb3cg
d2hlbiB5b3UgaGF2ZSB0aGUga2VybmVsIGl0c2VsZiBkbyB0aGUgb3BlbmluZyBvZiB0aGUKPj4g
Y2hhciBkZXZpY2UsIHJpZ2h0P8KgIFdoeSBpcyB0aGF0IG9rP8KgIFlvdSBjYW4gcGFzcyBpdCBf
YW55XyBjaGFyYWN0ZXIKPj4gZGV2aWNlIG5vZGUgYW5kIGF3YXkgaXQgZ29lcz/CoCBXaGF0IGlm
IHlvdSBnaXZlIGl0IGEgIndyb25nIiBvbmU/wqAgQ2hhcgo+PiBkZXZpY2VzIGFyZSB2ZXJ5IGRp
ZmZlcmVudCBmcm9tIGJsb2NrIGRldmljZXMgdGhpcyB3YXkuCj4gCj4gV2UgY291bGQgY29uZGl0
aW9uIGFueSBjb25maWdmcyBvcGVyYXRpb24gb24gY2FwYWJsZShDQVBfTkVUX0FETUlOKSB0bwo+
IGNsb3NlIHRoYXQgaG9sZSBmb3Igbm93Li4KCnMvTkVUL1NZUy8uLi4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
