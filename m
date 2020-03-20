Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A1218D9B3
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 21:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JenAtLnJBJzEx39/BC8RKDq8voCPPE8ai7Dheqtl/1I=; b=NEYaLxZ6y7ei/VjoMajzfiWGe
	4To2ma3+aP55K142dkMl9ZoPeVzDHXQ5isws0JWpgZt4ZL7u6PGUITEqhC0vtYeBz+Xs8jAKf4iVB
	0zAyzCTuNrHQ8Aa1pcw+d7cAijnJVClbME3mHxksm6zHWZamt0BgcyL4W2AHk9OMv4tPLovOBbmXH
	vF4AJerYKaQGYQsUXgtcjuRajUEXBsOCWtX/B26AfnmgN6OXCNxu/oVlOp4w1QlOt0N7hJw+WXGnG
	+PWcFuLF9zSo5esSkgRNMtMUiuRhgHYlx4FoVaxxG56tEnxXmTsoGLw7qHvHhxSFURdaCQwPeL0Tc
	TVvM/Pogw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOaJ-0002PL-25; Fri, 20 Mar 2020 20:49:39 +0000
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOaD-0002OX-9x
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 20:49:35 +0000
Received: by mail-wr1-f48.google.com with SMTP id h6so9111914wrs.6
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 13:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=odGQ2hQgXyuroa90B5vjBwZ7z7ei2Hr/GxAMeid1ZH8=;
 b=XsPJYSVekQ5T63lMytd2CPPdsvaom7bAeR4pLu/fAWqYVx80blGg2O4MUgDD49lwOS
 f0y/gZbWL2ysewIbly5DspSiKrCvFg2iUFwKHKUaoWntTI+rPQGEQAq3flyvysq4+XHW
 il6OYiGVVrCYtAhEWY8Lm4ZR8LG2SJSTh22xrZnmC0AyIzhNt2s7VNcBbAGd9Pb5/qT1
 p14SEMcAM2D7YPMxMm/t4QJUlzltHvCv1xNzyu8VntoMM7syJ2N4Tv5sdWzcwMyx/FI9
 9nXhSg7416wsgAP152U4U/sE0xmIlpX/ZsyNyn6p2VPToz9ieWcgVZOmTDNgZDTxTVnm
 NcOQ==
X-Gm-Message-State: ANhLgQ2PCL9khnfmD7G4CxzKHG+aa0bGJjM85IX4td9bDREhKBVExKTJ
 cXEP9cknzLpASnuS56m7c6e2UHoI
X-Google-Smtp-Source: ADFU+vvPCN8W93w/UXwiY5NIerSxTt+y669GCRGqUK+Jar3v1M3uTqBgmF5GSDgm6wMkIsTDRpBM0A==
X-Received: by 2002:adf:dd10:: with SMTP id a16mr5140930wrm.26.1584737371342; 
 Fri, 20 Mar 2020 13:49:31 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:b9e4:7d48:9c27:2b02?
 ([2601:647:4802:9070:b9e4:7d48:9c27:2b02])
 by smtp.gmail.com with ESMTPSA id f9sm9883254wrc.71.2020.03.20.13.49.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Mar 2020 13:49:30 -0700 (PDT)
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
To: Krishnamraju Eraparaju <krishna2@chelsio.com>
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
 <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
 <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
 <20200317191743.GA22065@chelsio.com>
 <38f79fb7-841a-9faa-e1f8-2de4b9f21118@grimberg.me>
 <20200317203152.GA14946@chelsio.com>
 <3f42f881-0309-b86a-4b70-af23c58960fc@grimberg.me>
 <20200320143544.GA5539@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <87bfe03d-baad-1166-14a1-6eba1739fde4@grimberg.me>
Date: Fri, 20 Mar 2020 13:49:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200320143544.GA5539@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_134933_350534_BC8AF7A1 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Bernard Metzler <BMT@zurich.ibm.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I assume this happens with iSCSI as well? There is nothing special
>> we are doing with respect to digest.
> 
> I don't see this issue with iscsi-tcp.
> 
> May be blk-mq is causing this issue? I assume iscsi-tcp does not have
> blk_mq support yet upstream to verify with blk_mq enabled.
> I tried on Ubuntu 19.10(which is based on Linux kernel 5.3), note that
> RHEL does not support DataDigest.
> 
> The reason that I'm seeing this issue only with NVMe(tcp/softiwarp) &
> iSER(softiwarp) is becuase of NVMeF&ISER using blk-mq?
> 
> Anyhow, I see the content of the page is being updated by upper layers
> while the tranport driver is computing CRC on that page content and
> this needs a fix.

Krishna, do you happen to run with nvme multipath enabled?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
