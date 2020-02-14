Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619B215D647
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 12:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zNtOqw7Ec1wEjj+lnGschC9R295XXR6kdLNRdhJqrcQ=; b=mE0tfmmIqpYrBfxiKSfpLYQB2
	ZQq2Cyn+oQ/51j6nmtPlAHt0Korfn7dHn39Go/s2rp8KMSmmnCrHcOI54kK34PFYTFMGX6O17bJl9
	ukEmlGvzalN9CPc/Cw2WhYM0uM5n33njPfLUr2vKikq7dwjQuIA0dKZxGWMSRo9i5Ehs5yidRcgCD
	30pnM4BFd1NFebDf1SVG9u6JVPTsTh08mGm7oBzu/1fhwe2qlksJrIEdv/IGLlzc3IQEvh/cE6k5O
	l3Ok21pJJ0UqgESskjU6bglo6uBifJ0dWMTy9D1k8SblMvAdCAcGtKp+DkKUsj5PJws36pUgXuzUj
	mLXmmwdUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Yox-0003Kx-Dx; Fri, 14 Feb 2020 11:07:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yos-0003KV-DG
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 11:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581678456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/RzwQ7Yckfeax43dkhnMM5BeX64NwVkAeI13+n6eXJA=;
 b=AlkP2nyssgJbh5ovE8SSLtT0V2ArUrd6Pat0TSA2oPGdBqRbuI2yX9NBdIBTj81OakWrAz
 DJzbuIoyvyJmHejnuc1kZ7vOA9n/BkJL0ZRFqh8Kou6rZmVIvLCAiKhINQaNa1fEoqncez
 evNwq/1TAfvrStja6cz7/VMm38MESrw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-9n1s9NdTOY-bXo--OncTWw-1; Fri, 14 Feb 2020 06:07:27 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C8231902EA1;
 Fri, 14 Feb 2020 11:07:26 +0000 (UTC)
Received: from localhost.localdomain (ovpn-13-234.pek2.redhat.com
 [10.72.13.234])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B8EB5C1C3;
 Fri, 14 Feb 2020 11:07:24 +0000 (UTC)
Subject: Re: [PATCH] nvme-cli: memblaze: change to 100644 mode for
 memblaze-nvme.c
From: Yi Zhang <yi.zhang@redhat.com>
To: kbusch@kernel.org
References: <20200116075658.24938-1-yi.zhang@redhat.com>
Message-ID: <0385dd9c-5b8f-c5e7-92e6-4ef70c25573a@redhat.com>
Date: Fri, 14 Feb 2020 19:07:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200116075658.24938-1-yi.zhang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 9n1s9NdTOY-bXo--OncTWw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_030738_523425_341A0484 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jian.ding@memblaze.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ping

On 1/16/20 3:56 PM, Yi Zhang wrote:
> Bellow WARNING observed with rpmbuild -bb rpmbuild/SPECS/nvme-cli.spec
> *** WARNING: plugins/memblaze/memblaze-nvme.c is executable but has
> empty or no shebang, removing executable bit
>
> Signed-off-by: Yi Zhang <yi.zhang@redhat.com>
> ---
>   plugins/memblaze/memblaze-nvme.c | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   mode change 100755 => 100644 plugins/memblaze/memblaze-nvme.c
>
> diff --git a/plugins/memblaze/memblaze-nvme.c b/plugins/memblaze/memblaze-nvme.c
> old mode 100755
> new mode 100644


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
