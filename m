Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE5F18FC27
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 18:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pweSfP0mudxsiw5ADPVCib0fZv3pp2RD3/Xds7yi0Q=; b=VGbstKLsWxAa0V
	dY7w8DYVQ+dOfs8WgZOOZstvIyqNeNrDFAi3MLAqVqqR5fNkWzp6T0XvBwsVqgg0ZWEX/QZd9Vbx/
	MT9toRhtwFd1pFForb+kAY+QZS4JR4pKK13bUedgGY3EZ3tm9Z4+PTwzdLK+7h6QfTP30g2FrXUgg
	PF3YDMrPCFDSCu4+wLc6fRcs13zHu8QwkulhVLE+b8nJO/s76XKHvO/vhu1S2LbGehcwFL+R4bd4v
	+FTm1/JZ5Wsa9OGlbBdgCWQ86dvYd2gE+uKwuK5DXhMt3dglYIrh2MwGeN86ozx7yVgzrHZpM7gOk
	t/uJWKhAQxEF893a+oeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGRJo-0003z1-Cb; Mon, 23 Mar 2020 17:56:56 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGRJj-0003yD-LM
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 17:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584986209;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aBXHGiMlByOVs5c8jFP5qk3M0UyA5/SP/M4CwmBrdYE=;
 b=cdUa0fRAuejLtjk/+QEYSoZcurEVEd+RrQVek3N3j78R/DVArqwbtUlVd03jDYCTsPWN2/
 lNJDrVGfJYMRuTaFc6IfJ1rtwHL05lRBcC1OS61KHtTN9c/lIdksBRRabRD6dhkJfOJxrH
 1S8la8CbM5CLoBfRuEd1/m+D6A9UjXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-VF-xf6qFNEity4J4uoVWuQ-1; Mon, 23 Mar 2020 13:56:48 -0400
X-MC-Unique: VF-xf6qFNEity4J4uoVWuQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33067149C5
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 17:56:47 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B7AA819C4F
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 17:56:46 +0000 (UTC)
Subject: Re: nvmet: Kernel oops when doing mkfs on nvme-tcp device
To: linux-nvme@lists.infradead.org
References: <17c25d8d-0dc2-9dc8-2b65-954034c23646@redhat.com>
 <507887d2-96dd-b0ee-bb05-519039d98359@grimberg.me>
 <f18d9173-b94e-69d6-022a-20603e8cb42b@grimberg.me>
 <7b56c65b-40a3-0172-6e42-7158fd88361c@redhat.com>
 <BYAPR04MB4965E360B649BF0EB0D1BAA586F20@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <52a296da-839d-a8a8-fe77-720faeb37aab@redhat.com>
Date: Mon, 23 Mar 2020 12:56:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965E360B649BF0EB0D1BAA586F20@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_105651_776956_083496F0 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: tasleson@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/20/20 7:43 PM, Chaitanya Kulkarni wrote:
> nvmet does support file backend, please have a look at blktests [1]
> under the test 025 in {BLKTEST_HOME}/tests/nvme about how to setup
> target with file backend.

I created a sparse file and used nvmetcli to change device to the
specified file.  I connected the client, ran dd and that worked fine.  I
tried using mkfs.ext4 and I got the same kernel oops.  Apparently it
doesn't matter if I use a file or device as the backing store for this
issue.

-Tony


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
