Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A321901E2
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 00:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7DnuTE2ha2WAJc+brvJXMt+eVhUNkgLO0m8sABVVYKk=; b=skoEsGgUJll2m4vWsi1dE2Itf
	T2GHreFYY3AjbRoaXAbIu4mMFFOyS5e6VaId1ENWQKt3IyDxVBPhl9l1+vYRnBoSbxO2EdwrkxPHD
	TsJJFdq4883X3p8sDJ+rM2JYv1Zut23UclgBvBKkqsE2uM+WBOhcvSpMw/+xfaO2oRkleFJvne/hW
	YCIiGyJ40FDWCSGmbit3kK8ewAwanejKOcMKjFmM9GCEaCFLRb3CyNmEnbpnztyNxS6944t4KtNu3
	w6CbtvJNWEMv6aDrh+CvN+4333Sjp6VhSWtUPKOCtNPNM1g9CViovRkeOU6QtTjw3v7TwW3ZIYktk
	GTGFVF3pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWXe-0005gU-Bw; Mon, 23 Mar 2020 23:31:34 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWXZ-0005g3-CS
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 23:31:30 +0000
Received: by mail-wr1-f66.google.com with SMTP id h15so7114726wrx.9
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 16:31:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=v3WCV0NyGuiiCf98IdKJ1LhDgSTqBiriF3iYcUEszF0=;
 b=V4aPH5/l/HWB7pqffZEVlp3aswwaLnuZrdWJ0KJVWBvNV6r/B3tWxV6COf7xo6YEd1
 cnR5MTrfr0cwoMmjPwP9PKuDYJZrq3+VzEY4vcX6hgNlunkX9s5T18GIoCavGh2pxSjf
 espZ1GdqghYkm8noHp7j3Udi1joCQybuhWIVZSBdaKU7Fii923IoxPpCprEeL9XI5T3K
 stBVrDtAUiXG4pGH9vdQs4xr0zlPWzPdcjKjto+t/xRX2s8h9zMvawTIGE6QhUp1+3oU
 gZnQb9keCvRaXAu+JQbaQ5r87OdPRIWV/8oSqSx4wgZ/FIn2jcriVU/wXFzPfQRNgg77
 K6iQ==
X-Gm-Message-State: ANhLgQ0+J76cz+eQhGVnHfIKaOFKyGdmkgIuC4XnSy0g0KvC7fwe82kb
 Ornh3/WMuDXdoqP/qALYhNg=
X-Google-Smtp-Source: ADFU+vun/6KpbK2GJP9AxSdMcDdsJMjCxndmbsyDW0tVVKreH7FfP8kJPKH/jpLClhsPusVWqLTHHg==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr17579679wrl.397.1585006288198; 
 Mon, 23 Mar 2020 16:31:28 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id f187sm1672651wme.31.2020.03.23.16.31.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 16:31:27 -0700 (PDT)
Subject: Re: [PATCH] nvme-tcp: don't poll a non-live queue
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <20200323221315.16120-1-sagi@grimberg.me>
 <MW3PR11MB46843A8A9A31FA57976BF422E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c2f44115-db67-772b-5c16-782a92a72e82@grimberg.me>
Date: Mon, 23 Mar 2020 16:31:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MW3PR11MB46843A8A9A31FA57976BF422E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_163129_424315_3D033567 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Verified to remove kernel fault caused by invalid pointer reference, seen during large writes (512K) and queue depth 32 with batch of 8.
> Tested on branch nvme-5.6-rc6, after adding patch this patch on top of previous patch that adds POLLING flag use by nvme_tcp_poll.

The POLLING patch is not upstream yet, but shouldn't make a difference

> 
> Tested-by: Mark Wunderlich <mark.wunderlich@intel.com>

But thanks for verifying.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
