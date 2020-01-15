Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA0A13CDA6
	for <lists+linux-nvme@lfdr.de>; Wed, 15 Jan 2020 21:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hL0IeaWHhqWkvzTf9uDgS6OiJF3LGIo6gC8h2hU7uYs=; b=QO0DqkKQ9sZVJJmkK7+cCS3q5
	plgBo213rna10sJHd7IuEmzxMFP8Ih+pWiCa2JXhEuDwXILR7EA4UpiBiWK1OIa5bDhRtXQEOJOzS
	vpEop9Q0aMdVQC4cNv6FT05crwLXeO94cTDqsUa+jnAURiBnEU5wV2ST9qXE5Exus11GuPElQYSn+
	MHvaqcF6KZfPo6KCfnTunIiWJ/fFskQX0a50EoWjlfvu081E6E3N5z9qp4Kvzq1kX3WcPUf9ugJCG
	KD4wvWF4yho6IOA+kqRnGy/bsXIplzgwJga6STrPGmcVLrHGhNFMk9MaUAvDQpVoLRZf5Yyp+OKrQ
	q95rSO+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irotR-0007Dv-AH; Wed, 15 Jan 2020 20:03:57 +0000
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irotA-00070D-3F
 for linux-nvme@lists.infradead.org; Wed, 15 Jan 2020 20:03:45 +0000
Received: by mail-wm1-f41.google.com with SMTP id d73so1333888wmd.1
 for <linux-nvme@lists.infradead.org>; Wed, 15 Jan 2020 12:03:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I8s1rB2CtoQTvKvPvHfEl3K+Z2A7MI2o0pt7J/YQMGo=;
 b=cZxA7RflAnYzQ1i3XkMw1NFM8EuGgyGFFdOpJ07l2IjAhIUmnToX2ynX4xHsd69f2Z
 rJyG47Xfz9fDLkQxKK20ZfdJsN3wzJQ9J6GH1mtlXIhP3tFZIs1g5fCkAPpX3snBwN4P
 aDXWRX5A3tSbQzAthB1C2lyfv5HWengeaIEwcm/2eF+I37NwbsqWrsiNTVA+uZB74y/n
 paBkiebpDvwdmuJWojRpruQyIdABAD2t8q30tc+hUMlzallneBgSfdDBRv6Ecnyr+Pcd
 2o/GquGc2d6FOQYHMkphW6zpRtwbXkP2/J1W9uE6+50XsWer6PZWkT9uULLXh8iG6mvl
 eYDw==
X-Gm-Message-State: APjAAAW+AzgXYCbrr4VPas7qVS+2Eylopb99BeFisPNhrUbArVpQs+jR
 ZJ1KGSug3n7EcBfsej57t/IMJOzj
X-Google-Smtp-Source: APXvYqwCRf0MBKfZEH/gwi6V7HK5639VUdSeruAKO9VnS1bM5Iu6jEeanLt6cVDsCavHE996gBINQQ==
X-Received: by 2002:a1c:2355:: with SMTP id j82mr1769126wmj.135.1579118617703; 
 Wed, 15 Jan 2020 12:03:37 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v8sm24934525wrw.2.2020.01.15.12.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 12:03:37 -0800 (PST)
Subject: Re: null pointer dereference in nvme_tcp_io_work
To: Stefan Majer <stefan.majer@gmail.com>
References: <CADdPHGvjZdh41u4HsSBBFs9jHohQ0qT4UJ223vysKANYZfzKRg@mail.gmail.com>
 <20191226174733.GA513665@chuupie.wdl.wdc.com>
 <CADdPHGsGtqOiS3ZXxf-6rOPeXAtREc-Ag3EAbPaQybtLaKU4Og@mail.gmail.com>
 <CAB5Wxwco3KD1e_nRGQ_mWAMa_2d-wP2-1Aao4ZXtDeVgFQQM_w@mail.gmail.com>
 <CADdPHGuJjpY6WNBw5hGFUKbJdrwM-oQ9A3xCy3e2O6fY4yzEPQ@mail.gmail.com>
 <CADdPHGsT8JxqWN8KKnQgJvNFZXzq08pd5eR1RJeUN-cmhQYH_Q@mail.gmail.com>
 <CADdPHGt+vLDp6hx0u3nabW7s6Ut11Jzbb4gx2NRD95zu3H9mvQ@mail.gmail.com>
 <CADdPHGumJGQcuHtzFZKmezgec1Jx1fBjAJeQDf5_n-YWvowdeQ@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <27c302af-0a0e-2739-6f54-b09007d088e8@grimberg.me>
Date: Wed, 15 Jan 2020 12:03:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADdPHGumJGQcuHtzFZKmezgec1Jx1fBjAJeQDf5_n-YWvowdeQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120340_145653_A78F579C 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi,
> 
> is there anything i can help with to further nail down the problem ?

Hi Stephen,

I cannot reproduce this issue with my environment (both host and target
are VMs on my laptop, kernel 5.4.0 qemu version 3.1.0).

Would it be possible to try and use kernel 5.4 for the sake of the test?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
