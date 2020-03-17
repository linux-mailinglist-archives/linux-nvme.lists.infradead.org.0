Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A9B188A8A
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 17:40:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p9ssX4cE3CsRBmyjvbc8GcCzNYn+od6NAEbeTqP4ET0=; b=MEyww7WKo1uUdcSbRbvcpM8xe
	CHU/8IHjYh93gwA7lN1DGBk5YGgl2VnIPuioS3wA+NRiDxryIGNb481tOqTlYE/9cfIK98g0vwyE2
	BYBcoDD/5TkXtvRTtmpXAMjW4KXo41sZ1PzRtml+1ut/Z4fEF2hdDaqpyQsiYWoR5tNNpm3wa287P
	Z3Cb/F684yJ+fRUKpev97qTdvsRSzD5lBNlr4/ulXa1yiR4w9Ir2RqtQOW2yztMYSbTYqWyWVWDJj
	dkSZUsy4hPr5vIBksdvLT0KYRmGxnleSIVrHDSa8FTDGlzZpjgl4S83XjltfXCgFB2+DFqZmODb8D
	ynmQohuTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFFv-0004PI-8u; Tue, 17 Mar 2020 16:39:51 +0000
Received: from mail-pf1-f176.google.com ([209.85.210.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFFp-0004ON-KE
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 16:39:48 +0000
Received: by mail-pf1-f176.google.com with SMTP id z5so12258218pfn.5
 for <linux-nvme@lists.infradead.org>; Tue, 17 Mar 2020 09:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D8YKEpilntC6PLM52SDOesP+siUQz9f0pY/yd7M7yZs=;
 b=pNYa2AhpF9yAQsYfbz9/lhgXWg6WvoMKmnqrcB1q/gFAuFyEqQNge5CjIPtvA1iZGS
 Sf27Rarv8QRmYbV+h8swoMnmeZaUzf/+ACQY8abX0/3rldpoEytY6JTFwWJ9yzQ8GfQ0
 zTU4c86WywdlZEAJuUL3Q9JW5wo+bClms5iVArO2pTp/ZtaeQfRgVS2O9YVgSpQlLSaz
 UGWzH6UXjtslAl1frnAObcJsjEkvQgsI5h9GNrTugTVVsvObFE5vpAnTTdHoN1WJZWbm
 2en0GCj8isc8m6VGYflolQ3ah0Iz+e8hLEt2f/ZIIoZ749KOEXdUWr/msC4YEBH5+bMz
 aeOg==
X-Gm-Message-State: ANhLgQ2EqBP3Dh7olGIksyuoaeSZwWlqBvMp2KpkUfGggfLRZhZPLkv8
 hQtDokBxv6UC9F0AAHFZuws=
X-Google-Smtp-Source: ADFU+vst0PWpw3o8HeyxJqN6Qrl1fz4MuzhJCYFQDBvMYy9P+adoxekZihnV7W1X+NAW65fpg/EWjg==
X-Received: by 2002:aa7:9839:: with SMTP id q25mr6161796pfl.2.1584463180925;
 Tue, 17 Mar 2020 09:39:40 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:29c1:6aa4:fe4b:2f81?
 ([2601:647:4802:9070:29c1:6aa4:fe4b:2f81])
 by smtp.gmail.com with ESMTPSA id 189sm3795672pfw.203.2020.03.17.09.39.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 09:39:40 -0700 (PDT)
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
To: Bernard Metzler <BMT@zurich.ibm.com>
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
 <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
Date: Tue, 17 Mar 2020 09:39:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_093946_814394_B405E16A 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.176 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.176 listed in wl.mailspike.net]
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
Cc: linux-rdma@vger.kernel.org, Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Krishnamraju Eraparaju <krishna2@chelsio.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> For TCP we can set BDI_CAP_STABLE_WRITES.  For RDMA I don't think
>> that
>>> is a good idea as pretty much all RDMA block drivers rely on the
>>> DMA behavior above.  The answer is to bounce buffer the data in
>>> SoftiWARP / SoftRoCE.
>>
>> We already do, see nvme_alloc_ns.
>>
>>
> 
> Krishna was getting the issue when testing TCP/NVMeF with -G
> during connect. That enables data digest and STABLE_WRITES
> I think. So to me it seems we don't get stable pages, but
> pages which are touched after handover to the provider.

Non of the transports modifies the data at any point, both will
scan it to compute crc. So surely this is coming from the fs,
Krishna does this happen with xfs as well?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
