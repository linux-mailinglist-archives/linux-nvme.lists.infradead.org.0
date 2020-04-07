Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25D1A107E
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Apr 2020 17:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MdKUwCcS4f3z9/uo2mVsi5lCyeI7ErFY0RK9jpxFmow=; b=ioHCq5GrPqgvrxyrEtuYWoeq+
	yuVe22S5ko+7hduDUzZhnJpVYRcbypaqZ5HabBCstUe5i5+iqXKIqzYUUAwwSUqorYQ0Naf16rbVZ
	GgeehsRkebZulqQNA4pS5ZnMt1S+z/hUWVILGhe9SlIzqgyPyjnvKUzGwsHT4vWTes5whxv3k7vPO
	7+NYIVm1W6i7/T8e9M1nd1mZENrSA3AIYPrs7pjUCmkQ/G6HO1WhJWNiOfnQFKigLEa5RDM8S5gnh
	Ve5CxpRayCUHfSIiNhnfU6u0Y5Be8tLNbQtVFm2pjRliw4BID8IPGENSPw+Vw9n4jplaqUn0nHppz
	RsKYtNbOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqQG-0006Ck-0M; Tue, 07 Apr 2020 15:45:56 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqQB-0006C9-By
 for linux-nvme@lists.infradead.org; Tue, 07 Apr 2020 15:45:53 +0000
Received: by mail-wm1-f67.google.com with SMTP id j19so2358647wmi.2
 for <linux-nvme@lists.infradead.org>; Tue, 07 Apr 2020 08:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C16oVRMB3hH1S8id/8Wc/TYtjKFaTxUi16DIko4shnc=;
 b=Wc9d+bhjMUeh7LeTYsH5nV9gZAd41n3qX4uUQ9IBOkOEimPMtX4W4VDhWKcssrtmQO
 cIw8XmLAxo2dipH00ql2gYQmAOhdw+exRbktBPLgRndfjI++aKL81n8Lp2BHLhRI6+WB
 hcBjq4NojadcbdRBIlFAJVJDNij+gtRWicCpTxXS5bgk9GTp2H+CqEM2h7mOf5cL55tZ
 NaE7Tnt7sY1xEQFfyhdcOOnaGe0lknA6k9npO0ilQ+YRQIRceUqX7ikpaNvN6OE7ICkq
 AriM8sl5VeUVL+5vnbMR03dJluaCCNzyKcoGs3WzxTSZGIcs2TGVRkLqSZIZ/yrIkveK
 uzjg==
X-Gm-Message-State: AGi0PubMd7h6YTv0KfVlIQF5nrBjoS+XcTDXOEtUWWortGCNNEI8/Ge8
 PvtxNIfC0LH05JJS6sG1RFg=
X-Google-Smtp-Source: APiQypJfU5fgfePQKsZy7fEcpIrCPYPG899sLRdOMuKCnqDxI5a7u+PjO0V42L6X7jCDAvcaUBij0w==
X-Received: by 2002:a1c:2d8b:: with SMTP id t133mr3091630wmt.131.1586274345503; 
 Tue, 07 Apr 2020 08:45:45 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:de6:f05e:6a88:9257?
 ([2601:647:4802:9070:de6:f05e:6a88:9257])
 by smtp.gmail.com with ESMTPSA id b82sm3076347wmh.1.2020.04.07.08.45.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 08:45:44 -0700 (PDT)
Subject: Re: [PATCH V2] nvmet-rdma: Fix double free of rdma queue
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1586257348-16216-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b3023a30-4a25-5956-e298-14078cf8fd0c@grimberg.me>
Date: Tue, 7 Apr 2020 08:45:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1586257348-16216-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_084551_406887_7EF9CCEF 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/7/20 4:02 AM, Israel Rukshin wrote:
> In case rdma accept fails at nvmet_rdma_queue_connect(), release work is
> scheduled. Later on, a new RDMA CM event may arrive since we didn't
> destroy the cm-id and call nvmet_rdma_queue_connect_fail(), which schedule
> another release work. This will cause calling nvmet_rdma_free_queue twice.
> To fix this we implicitly destroy the cm_id with non-zero ret code, which
> guarantees that new rdma_cm events will not arrive afterwards.
> Also add a qp pointer to nvmet_rdma_queue structure, so we can use it when
> the cm_id pointer is NULL or was destroyed.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Suggested-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
